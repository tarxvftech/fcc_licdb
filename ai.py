import os
import glob
import itertools
import argparse

import apikeys
import openai

ai = openai.OpenAI(api_key=apikeys.keys.openai)

class AIException(Exception):
    pass

def ask(msgs,prompt=0):
    if type(msgs) == type(""):
        msgs=[ {"role":"user","content":msgs} ]

    prompts=[
            {"role":"system","content":"Do not include any explanations, comments, or other details, only exactly what is asked for. Make sure to wrap any code or similar output in triple backticks, and mark the block as appropriate."}
            ]
    #roles: system user assistant
    messages = [ prompts[prompt] ] + msgs
    resp = ai.chat.completions.create( model="gpt-4o", messages=messages)
    resptxt = resp.choices[0].message.content
    return resptxt

def ai_convert_table_to_sqlite3(sqlin):
    a="Please convert to sqlite3. Remember that sqlite supports INTEGER, TEXT, BLOB, REAL, and NUMERIC storage classes, and prefer INTEGER or REAL over numeric where possible. Tag your code block as sqlite.\n```sql\n" + sqlin + "\n```\n"
    areply = ask(a)
    print(a,areply)
    tn = table_name(areply)
    sql = reply_sql(areply)
    if tn.upper().startswith("PUBACC_"):
        return sql
    else:
        raise(AIException( "|".join([a,areply]) ) )

def table_name(s):
    t=s.split()
    try:
        tni = t.index("TABLE")+1
    except ValueError:
        tni = t.index("table")+1
    tn = t[tni]
    end = len(tn)
    if "," in tn:
        end = tn.index(",")
    if tn.startswith("dbo."):
        tn = tn[4:end]
    else:
        tn = tn[:end]
    tn = tn.strip()
    return tn

def reply_sql(s):
    t=s.split("\n")
    start = t.index("```sqlite")+1
    end = t.index("```")
    return "\n".join(t[start:end])

def load_sql_definitions(filename):
    with open(filename,"r") as fd:
        lines = [l.strip() for l in fd.readlines() if not l.isspace()]
        tables_sql = ['\n'.join(list(group)) for key, group in itertools.groupby(lines, lambda x: x=='go') if not key]
    tables = {table_name(t):t for t in tables_sql}
    return tables

def convert_table_and_write(name,sql):
    sql = ai_convert_table_to_sqlite3(sql)
    with open(f"sql/{name.upper()}.sql","w") as fd:
        fd.write(sql)

def convert_all_tables(tables):
    for tno,t in tables.items():
        print(tno)
        file = f"sql/{tno.upper()}.sql"
        if os.path.isfile(file):
            print(f"Skipping {file}, already exists")
            continue
        convert_table(tno,t)

def sanity_check(tables):
    files = glob.glob("sql/*.sql")
    for f in files:
        name,_ = os.path.splitext( os.path.basename( f ) )
        assert name.startswith("PUBACC_")
        with open(f,"r") as fd:
            sql = fd.read()
        sql_tn = table_name(sql).upper().strip()
        if sql_tn != name:
            print(f"Error with '{name}', table name mismatch: '{sql_tn}'")


def main():
    parser = argparse.ArgumentParser(description="Convert SQL tables to SQLite3 format.")
    parser.add_argument('-t', '--table', help='Specify table name to convert. If not specified, all tables will be converted.')
    parser.add_argument('-c', '--check', help='Sanity check the existing files in sql/',action="store_true")

    args = parser.parse_args()

    tables = load_sql_definitions("dbz/public_access_database_definitions_sql_20240215.txt")
    
    if args.check:
        sanity_check(tables)
    elif args.table:
        tn = args.table
        if tn in tables:
            convert_table_and_write(tn, tables[tn])
        else:
            print(f"Table {tn} not found.")
    else:
        convert_all_tables(tables)

if __name__ == "__main__":
    main()
