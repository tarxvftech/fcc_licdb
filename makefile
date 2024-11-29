.PHONY:sql
sql:
	rlwrap sqlite3 uls.db

.PHONY:dist
dist:
	rm -r dist/
	mkdir dist/
	cp *.json dist/
	cp *.geojson dist/
	cp index.html dist/
	scp -r dist/* murakumo:/srv/http/files.tarxvf.tech/fcc_licdb/

clean:
	rm uls.db
