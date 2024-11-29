.PHONY:sql
sql:
	rlwrap sqlite3 uls.db

clean:
	rm uls.db
