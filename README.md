### Network test usage
Make the script executable  
`chmod +x networktest.sh`  

Replace `<hostname>` with the host to test, `<delay>` with the time to wait before sampling again and `<iface>` with the network interface to test  
`nohup bash ~/Tools/networktest.sh <hostname> <delay> <iface> </dev/null > /tmp/networktest.out 2>&1 &`  

The time format is defined as follows:
NUMBER[SUFFIX]  
Where SUFFIX may be:  
* s for seconds (the default)  
* m for minutes  
* h for hours  
* d for days  

For instance:
`nohup bash ~/Tools/networktest.sh 192.168.168.1 5m wlan1 </dev/null > /tmp/networktest.out 2>&1 &`

The bash job ID will appear in brackets, and the process ID (PID) listed after. For example:  
[1] 25132  

You can use the PID to terminate the process prematurely  

`kill -9 25132`  
