ENCODING="UTF-8"
DATAPATH="`pwd`/$1"
cd $1

echo "DEST.TMI
LINE.TMI
FINANCER.TMI
CONAREA.TMI
CONFINREL.TMI
USRSTAR.TMI
USRSTOP.TMI
POINT.TMI
TILI.TMI
LINK.TMI
POOL.TMI
JOPA.TMI
JOPATILI.TMI
ORUN.TMI
SCHEDVERS.TMI
PUJOPASS.TMI
OPERDAY.TMI" | while read i; do
	TABLE=`basename $i .TMI`
	echo "COPY ${TABLE} FROM '${DATAPATH}/${i}' WITH DELIMITER AS '|' NULL AS '' CSV HEADER ENCODING '${ENCODING}';"
done
