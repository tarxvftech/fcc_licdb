import os
import sys
import glob
import json
import random
import sqlite3
import argparse


from misc import dattr
#import webbrowser

#import folium
#import pandas as pd
#from gender_detector.gender_detector import GenderDetector
#import uszipcode 


where = dattr()
where.pc219 = (" HD.radio_service_code = 'PC' "
        " and HD.license_status = 'A' "
        " and ( "
               "(HD.auction_id in (57,61)) "
        " OR ("
                " (MF.lower_frequency BETWEEN 219.0 and 220.0 "
                " or MF.upper_frequency BETWEEN 219.0 and 220.0) "
                " or (MF.lower_frequency <= 219 and MF.upper_frequency >= 220) "
            " )"
        " )"
               )
        # ")"

class FCCTable:
    pass

class AD(FCCTable):
    applicationpurpose_codes = {
            "AA":"Assignment of Authorization",
            "AM":"Amendment",
            "AR":"DE Annual Report",
            "AU":"Administrative Update",
            "CA":"Cancellation of License",
            "CB":"C Block Election",
            "DC":"Data Correction",
            "DU":"Duplicate License",
            "EX":"Request for Extension of Time",
            "HA":"HAC Report",
            "LC":"Cancel a Lease",
            "LE":"Extend Term of a Lease",
            "LL":"'603T', no longer used",
            "LM":"Modification of a Lease",
            "LN":"New Lease",
            "LT":"Transfer of Control of a Lessee",
            "LU":"Administrative Update of a Lease",
            "MD":"Modification",
            "NE":"New",
            "NT":"Required Notification",
            "RE":"DE Reportable Event",
            "RL":"Register Link/Location",
            "RM":"Renewal/Modification",
            "RO":"Renewal Only",
            "TC":"Transfer of Control",
            "WD":"Withdrawal of Application",
            }
    applicationstatus_codes = {
            "1":"Submitted",
            "2":"Pending",
            "A":"A Granted",
            "C":"Consented To",
            "D":"Dismissed",
            "E":"Eliminate",
            "G":"Granted",
            "H":"History Only",
            "I":"Inactive",
            "J":"HAC Submitted",
            "K":"Killed",
            "M":"Consummated",
            "N":"Granted in Part",
            "P":"Pending Pack Filing",
            "Q":"Accepted",
            "R":"Returned",
            "S":"Saved",
            "T":"Terminated",
            "U":"Unprocessable",
            "W":"Withdrawn",
            "X":"NA",
            "Y":"Application has problems",
            }
class AM(FCCTable):
    operatorclass_codes = {
            "A":"Advanced",
            "E":"Amateur Extra",
            "G":"General",
            "N":"Novice",
            "P":"Technician Plus",
            "T":"Technician",
    }

class HD(FCCTable):
    licensestatus_codes = {
            "A":"Active",
            "C":"Canceled",
            "E":"Expired",
            "L":"Pending Legal Status",
            "P":"Parent Station Canceled",
            "T":"Terminated",
            "X":"Term Pending",
            }
class EN(FCCTable):
    entitytype_codes = {
            "CE":"Transferee contact",
            "CL":"Licensee Contact",
            "CR":"Assignor or Transferor Contact",
            "CS":"Lessee Contact",
            "E":"Transferee",
            "L":"Licensee or Assignee",
            "O":"Owner",
            "R":"Assignor or Transferor",
            "S":"Lessee",
            }

    applicanttypecode_codes = {
            "B":"Amateur Club",
            "C":"Corporation",
            "D":"General Partnership",
            "E":"Limited Partnership",
            "F":"Limited Liability Partnership",
            "G":"Governmental Entity",
            "H":"Other",
            "I":"Individual",
            "J":"Joint Venture",
            "L":"Limited Liability Company",
            "M":"Military Recreation",
            "O":"Consortium",
            "P":"Partnership",
            "R":"RACES",
            "T":"Trust",
            "U":"Unincorporated Association",
            }

class TableNames:
    table_abbreviations = { #from https://www.fcc.gov/sites/default/files/pubacc_tbl_abbr_names_20240215.pdf
            "A2": "Additional Application Detail",
            "A3": "Leased Antenna",
            "AC": "Aircraft",
            "AD": "Application Detail",
            "AG": "Agreement",
            "AH": "Additional MM Application Attachment Information",
            "AM": "Amateur",
            "AP": "Agreement Party",
            "AS": "Associated Call Signs",
            "AN": "Antenna",
            "AT": "Attachment",
            "BC": "Broadcast Call Sign",
            "BD": "Bidding Credits",
            "BE": "BRS/EBS Specific Questions",
            "BF": "Build Out Frequency",
            "BL": "Build Out Location",
            "BO": "Build Out",
            "BT": "Business Type",
            "CD": "Closed Bidding/Designated Entity Eligibility",
            "CF": "Call Sign/File Number",
            "CG": "Coast & Ground",
            "CO": "Comments",
            "CP": "Control Point",
            "CS": "COSER",
            "EC": "ECIP Question and Prong 1/Prong 2 Question",
            "EM": "Emission",
            "EN": "Entity",
            "F2": "Additional Frequency Information",
            "F3": "Leased Frequency",
            "F4": "Additional Leased Frequency",
            "F5": "Leased Frequency Canned Special Conditions",
            "F6": "Leased Frequency Free-Form Special Conditions",
            "FA": "FRC [Restricted & Commercial Operator]",
            "FC": "Frequency Coordination",
            "FR": "Frequency",
            "FS": "Frequency Level Canned Special Conditions",
            "FF": "Frequency Level Free Form Special Conditions",
            "FT": "Frequency Type",
            "HD": "Application License/Header",
            "HS": "History",
            "IA": "International Addresses",
            "IF": "IORN/FORN Notification Data",
            "IR": "IRAC",
            "L2": "Additional Location Data",
            "L3": "Leased Locations",
            "L4": "Additional Leased Location Data",
            "L5": "Leased Location Canned Special Conditions",
            "L6": "Leased Location Free-Form Special Conditions",
            "LA": "License Attachment",
            "LC": "Lease Classification",
    "LD": "Lease Dates",
  "LH": "Additional MM License Attachment Information",
  "LL": "Lease Link",
  "LM": "Land Mobile Administration Data",
  "LO": "Location",
  "LS": "Location Level Canned Special Conditions",
  "LF": "Location Level Free Form Special Conditions",
  "MC": "Market Coordinate",
  "ME": "MEA Number",
  "MF": "Market Frequency",
  "MH": "Channel Plan Information",
  "MI": "MDS/ITFS Administration",
  "MK": "Market",
  "MP": "Market Partition",
  "MW": "Microwave",
  "OP": "Area Of Operation Text",
  "O2": "Leased Area of Operation Text",
  "PC": "Points Of Communication",
  "PA": "Microwave Path",
  "P2": "Lease Microwave Path",
  "RA": "Radial",
  "RC": "Receiver",
  "RE": "Reasons",
  "RI": "Revenue Information",
  "RZ": "Receive Zone",
  "SC": "License Level Canned Special Conditions",
  "SE": "Ship Exemption",
  "SF": "License Level Free Form Special Conditions",
  "SG": "Microwave Segments",
  "SH": "Ship",
  "SI": "SIDS",
  "SR": "Ship Rescue Administration",
  "ST": "Sector",
  "SV": "Ship Voyage",
  "TA": "Transfer/Assign",
  "TP": "Transmission Method or Protocol",
  "TL": "Tribal Lands",
  "UA": "Unserved Area",
  "VC": "Vanity Call Sign"
}

def create_one_db(dbcon,two_letter_code):
    db = dbcon.cursor()
    file = f"sql/PUBACC_{two_letter_code}.sql"
    with open(file,"r") as fd:
        statement = fd.read()
    db.execute(statement)
    dbcon.commit()
    db.close()

def create_all_db(dbcon): 
    db = dbcon.cursor()
    print("Creating tables:")
    for file in glob.glob("sql/*.sql"):
        with open(file,"r") as fd:
            statement = fd.read()
        print(file)
        db.execute(statement)
        dbcon.commit()
    print("Done creating tables")
    db.close()

class TableAlreadyExists(Exception):
    pass

def import_service_weekly_dump(dbcon, service):
    """
    service like "l_amat" for *l*icenses in the *amat*eur service, etc
    """
    servdir = f"dbz/{service}/"
    files = glob.glob(servdir + "*.dat")
    for file in files:
        name,_ = os.path.splitext( os.path.basename( file ) )
        assert len(name) == 2
        print(f"Import {service}:{name} < {file}")
        import_one_table(dbcon, name, file)
        print(f"Done with {service}:{name}")

def import_one_table(dbcon, table, file):
    """
    table like AM
    file like dbz/l_amat/AM.dat
    """
    db = dbcon.cursor()
    i = 0
    #special cases:
    #EN WRXT202, EN WRQZ473
    with open(file, 'r') as fd:
        #not great because readlines reads the whole file at once.
        numcols = query(dbcon, f"select count(*) as colcnt from pragma_table_info('PUBACC_{table}')")[0]['colcnt']
        rows = []
        leftoverline = ""
        for line in fd.readlines():
            if len(leftoverline) > 0:
                line = leftoverline + line
                leftoverline = ""

            row = line.strip().split('|')
            if len(row) < numcols:
                #[i for i in range(len(rows)) if len(rows[i]) != len(rows[0])]
                leftoverline += line
                continue
            if len(row) > numcols:
                e = f"Error handling {file} around line {i}: {line}\n"
                leftoverline = ""
                print(e)
                with open("errors.txt","a+") as fd:
                    fd.write(e)
                continue
            rows.append(row)
            #strip it so the string doesn't have a newline
            #split it into a list of columns (FCC db dump uses the pipe as a field separator)
            i += 1
            batchsize = 50*1024-1
            if len(rows) > batchsize:
                s = "INSERT INTO PUBACC_%s VALUES ("%(table) + ("?,"*len(rows[0]))[:-1] + ")"
                try:
                    db.executemany(s, rows)
                except sqlite3.ProgrammingError as e:
                    print(e)
                    import pdb; pdb.set_trace()

                dbcon.commit()
                print(f"rows: {i}")
                rows = []
        s = "INSERT INTO PUBACC_%s VALUES ("%(table) + ("?,"*len(rows[0]))[:-1] + ")"
        db.executemany(s, rows)

    dbcon.commit()
    db.close()

class printableRow(sqlite3.Row): 
    #Row is really fast with low overhead. We ruin that a bit by allowing dot access and overriding the __str__ method so it prints something sane to the screen
    def __repr__(self):
        return self.__str__()
    def __str__(self):
        s = "<"
        for k in self.keys():
            s += k + ":" + str(self[k]) + ", "
        s += ">"
        return s
    def __getattr__(self,name):
        return self[name]
    def __setattr__(self,name,value):
        self[name] = value
    
def lazy_query(dbcon, q, args=None):
    db = dbcon.cursor()
    if args is None:
        db.execute(q)
    else:
        db.execute(q,args)
    while True:
        row = db.fetchone()
        if row == None:
            break
        yield row
    db.close()

def query(dbcon, q, args=None):
    db = dbcon.cursor()
    if args is None:
        db.execute(q)
    else:
        db.execute(q,args)
    i = 0
    res = db.fetchall()
    for row in res:
        print(i)
        for column in row.keys():
            print("\t",column, row[column])
        i+=1
    return res

def sqljoin(main_table, other_tables, common_column,join="left"):
    s="PUBACC_"
    mst = main_table[len(s):] if s in main_table else main_table
    sql = f"FROM {main_table} {mst}"
    for table in other_tables:
        st = table[len(s):] if s in table else table
        sql += f" {join} JOIN {table} {st} ON {mst}.{common_column}={st}.{common_column} "
    return sql

def add_markets(dbcon):
    q = "select MC.* "+ \
        sqljoin("PUBACC_MC",["PUBACC_HD","PUBACC_MF"],"call_sign")+\
        "where " +where.pc219 +\
        ";"
    features = {}
    bad = ['L000050594','L000046424','L000042813','L000042813','L000042431','L000042430','L000040769','WRDH825','L000040763','L000040757','L000040752','L000040747','L000040745','L000040739','L000051430']
    for p in lazy_query(dbcon, q):
        try:
            lat,long = get_lat_long(p,"partition_lat","partition_long")
        except TypeError as e: #doesn't have lat/long
            continue
        area = p.partition_area_id
        seq = p.coordinate_seq_id
        cs = p.call_sign
        key = (cs,area)
        if cs in bad:
            continue
        if key not in features:
            print(key)
            features[key] = {
                    "properties":{
                        "type": "MC",
                        "call_sign":cs, 
                        "id":p.unique_system_identifier, 
                        "link": f"https://wireless2.fcc.gov/UlsApp/UlsSearch/license.jsp?licKey={p.unique_system_identifier}",
                        "area":area, 
                        },
                    "type": "Feature",
                    "geometry": {
                        "type":"Polygon",
                        "coordinates":[ [ ] ]
                        },
                    }
        features[key]["geometry"]["coordinates"][0].append([seq,long,lat])
    for key in features.keys():
        features[key]["geometry"]["coordinates"][0].sort(key=lambda x:x[0]) #sort based on sequence number
        features[key]["geometry"]["coordinates"][0] = list(map(
            lambda x:[x[1],x[2]],  #now get rid of the sequence number
            features[key]["geometry"]["coordinates"][0]
            ))
        l = len(features[key]["geometry"]["coordinates"][0])
        if l > 20000: #that's enough points for anybody
            print(key,l)
            del features[key]["geometry"]["coordinates"][0]
    print(bad)
    by_callsign = {}
    for key in features.keys():
        cs,areaid = key
        if cs not in by_callsign:
            by_callsign[cs] = {}

        by_callsign[cs][areaid] = features[key]
    return by_callsign


def get_lat_long(o:dict, latkey:str, longkey:str):
    lat = o[f"{latkey}_degrees"] + o[f"{latkey}_minutes"]/60 + o[f"{latkey}_seconds"]/3600
    long = o[f"{longkey}_degrees"] + o[f"{longkey}_minutes"]/60 + o[f"{longkey}_seconds"]/3600
    if o[f"{latkey}_direction"] == "S": 
        lat *= -1
    if o[f"{longkey}_direction"] == "W": 
        long *= -1
    return lat,long
        

def add_locations(dbcon):
    #TODO: find points with the same exact lat,long and join them together into one point and aggregate the details
    lo_q = "select distinct LO.* "+ \
        sqljoin("PUBACC_LO",["PUBACC_HD","PUBACC_MF"],"call_sign")+\
        "where " +where.pc219+\
        ";"
    features_cs = {}
    for loc in lazy_query(dbcon, lo_q):
        try:
            lat,long = get_lat_long(loc,"lat","long")
        except TypeError as e: #doesn't have lat/long
            continue
        o={
          "type": "Feature",
          "geometry": {
            "type": "Point",
            "coordinates": [long, lat] 
          },
          "properties": {
            "type": "LO",
            "call_sign": f"{loc.call_sign}",
            "id": f"{loc.unique_system_identifier}",
            "link": f"https://wireless2.fcc.gov/UlsApp/UlsSearch/license.jsp?licKey={loc.unique_system_identifier}"
          }
        }
        if loc.call_sign not in features_cs:
            features_cs[loc.call_sign]=[]
        features_cs[loc.call_sign].append(o)
    return features_cs

def add_pointscomm(dbcon):
    lo_q = "select PC.* "+ \
        sqljoin("PUBACC_PC",["PUBACC_HD","PUBACC_MF"],"call_sign")+\
        "where " +where.pc219+\
        ";"
    features_cs = {}
    for loc in lazy_query(dbcon, lo_q):
        try:
            lat,long = get_lat_long(loc,"lat","long")
        except TypeError as e: #doesn't have lat/long
            continue
        o={
          "type": "Feature",
          "geometry": {
            "type": "Point",
            "coordinates": [long, lat] 
          },
          "properties": {
            "type": "PC",
            "call_sign": f"{loc.call_sign}",
            "id": f"{loc.unique_system_identifier}",
            "link": f"https://wireless2.fcc.gov/UlsApp/UlsSearch/license.jsp?licKey={loc.unique_system_identifier}"
          }
        }
        if loc.call_sign not in features_cs:
            features_cs[loc.call_sign]=[]
        features_cs[loc.call_sign].append(o)
    return features_cs

def write_geojson(dbcon):
    #LL, MK, MF
    #convert all points to multipoints to group them together
    #maybe geometry collections for each callsign?
    print("collecting locations")
    lo = add_locations(dbcon)
    print("collecting market coordinates")
    mc = add_markets(dbcon)
    print("collecting pointcomms")
    pc = add_pointscomm(dbcon)
    callsigns = set(list(mc.keys()) + list(lo.keys()) + list(pc.keys()))
    collection = {}
    print("assembling feature collections by callsign")
    for cs in callsigns:
        print(cs)
        features=[]
        features += lo.get(cs,[])
        if cs in mc:
            features += mc[cs].values()
        features+=pc.get(cs,[])
        cso = {
                "type": "FeatureCollection",
                "features": features
                }
        collection[cs] = cso
    with open("by_callsign.json","w") as fd:
        json.dump(collection,fd)
    print("GEOJSON DONE")


def main():
    parser = argparse.ArgumentParser(description='Manage database and services.')
    parser.add_argument('-g','--geojson', action='store_true', help='Write GeoJSON data')
    parser.add_argument('--no-coords', action='store_true', help='Execute no-coords query')
    parser.add_argument('-c','--create-db', action='store_true', help='Create the database if it does not exist')
    parser.add_argument('-i', '--import-services', nargs='*', default=['all'],
                        help='Specify services to import (e.g., -i l_amat l_market) or "all" for all services')
    args = parser.parse_args()

    mustcreatedb = args.create_db or not os.path.isfile("uls.db")
    dbcon = sqlite3.connect('uls.db')
    dbcon.row_factory = printableRow #each row returned will be of this class
    if mustcreatedb:
        create_all_db(dbcon)
        all_services = ["l_amat", "l_coast", "l_gmrs", "l_market", "l_LMpriv", 
                        "l_paging", "l_LMcomm", "l_LMbcast"]

        if 'all' in args.import_services or not args.import_services:
            services = all_services
        else:
            services = args.import_services
        for svc in services:
            print("Importing:", svc)
            import_service_weekly_dump(dbcon, svc)
    
    if args.geojson:
        write_geojson(dbcon)
    if args.no_coords:
        qs = "select HD.call_sign, HD.unique_system_identifier "+\
              sqljoin("PUBACC_HD",["PUBACC_MC","PUBACC_LO","PUBACC_MF"],"call_sign")+\
                        "where LO.call_sign is null and MC.call_sign is null "+\
                        "and " + where.pc219+\
                        ";"
        query(dbcon, qs)
        # count(*) > 133
    if args.no_coords and False:
        qs = "select HD.call_sign, HD.unique_system_identifier "+\
              sqljoin("PUBACC_HD",["PUBACC_HD","PUBACC_MF"],"call_sign")+\
                        "where " + where.pc219+\
                        ";"
                        
        query(dbcon, qs)
        # > 133

    #get active callsigns 
        #get frequencies (MF) (Not FR, but maybe check there too - nothing right now)
            #MK has block a, block b I think and that might be where the frequencies are coming from on web that aren't shown in MF?
        #get their locations (LO) (not PC)
        #get their market boundaries (MC?)(MK,MP?)
        #get their lessees (LL)
            #lessees go into major list for checking for locations and such


if __name__ == "__main__":
    main()

