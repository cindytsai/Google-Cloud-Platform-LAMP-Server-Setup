# This backup script is for NEWcup. 
# [Usage]
# sh backup_script.sh <bucket_name> <NEWcup/NTUcup>
gsutil cp /var/www/html/resource/backup/*.php gs://$1
mysqldump -u NTUcup -p0986036999 --opt tournament > tournament.sql
mysqldump -u NTUcup -p0986036999 --opt $2 > $2.sql
gsutil cp *.sql gs://$1
rm -f tournament.sql $2.sql