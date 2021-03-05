#\bin\bash

while :
do
	nmcli radio  wifi | grep enabled &> /dev/null
	if [ $? == 0 ]; then
		echo "Connection Established..."
		echo "Running Script.."
		python3 app.py
	else
	echo "Not Connected to wifi!!!";
	sleep 1;
	fi
done
