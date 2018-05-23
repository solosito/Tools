while true
do
	DATE=`date '+%Y-%m-%d %H:%M:%S'`

	if ping -c 2 -q $1 &>/dev/null; then
	    echo "[$DATE]: Connected"
	else
            DMESG=`dmesg | tail`
	    IFCONFIG=`ifconfig $3`
	    IWCONFIG=`iwconfig $3`
	    echo -e "\n[$DATE]: Disconnected"
	    echo -e "\t[dmesg output]"
	    sed -r "s/^/\t\t/" <<< "$DMESG"
	    echo -e "\t[ifconfig output]"
	    sed -r "s/^/\t\t/" <<< "$IFCONFIG"
	    echo -e "\t[iwconfig output]"
            sed -r "s/^/\t\t/" <<< "$IWCONFIG"
	fi
	sleep $2
done
