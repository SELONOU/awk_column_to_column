for i in *.csv;
do
	awk -F, 'NR > 1 { print $2 >($1 ".smi") }' *.csv # You can also use this script awk -F, 'NR > 1 { name = $1; sub("[^,]*,",""); print >(name ".smi") }' *.csv
done
