# This backup script is for NTUcup. 
# [Usage]
# sh backup_script.sh <bucket_name>
gsutil cp /var/www/html/resource/backup/*.php gs://$1
cd
mysqldump -u NTUcup -p0986036999 --opt tournament > tournament.sql
mysqldump -u NTUcup -p0986036999 --opt NTUcup > NTUcup.sql
gsutil cp *.sql gs://$1
rm -f tournament.sql NTUcup.sql