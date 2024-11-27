.PHONY: unzipall_l dl
unzipall_l: $(patsubst l_%.zip, l_%, $(wildcard l_*.zip))

l_%: l_%.zip
	echo $@ : $^
	mkdir -p $@
	unzip -d $@ $^
dl:
	#echo https://www.fcc.gov/uls/transactions/daily-weekly#fcc-uls-transaction-files-weekly
	wget -c -i dl -4 -U "tarxvf fcc_licdb 0.1"
	mv download "special_conditions.txt"
clean:
	-rm *.dat counts
	-rm -r $(patsubst l_%.zip, l_%, $(wildcard l_*.zip))
