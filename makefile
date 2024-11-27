download_all:
	wget -P dbz -i dl -4 -U "tarxvf fcc_licdb 0.1"

.PHONY:sql
sql:
	rlwrap sqlite3 uls.db

clean:
	rm uls.db
