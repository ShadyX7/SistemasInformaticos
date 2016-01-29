case $1 in

usuarios)

cat /etc/passwd | grep bash | cut -d ":" -f1 > temporal2

cat temporal2
rm temporal2
;;

servicios)

cat /etc/passwd | grep false | cut -d ":" -f1 > temporal3
cat temporal3
rm temporal3
;;

esac
