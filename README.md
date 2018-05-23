### Network test usage
Make the script executable  
`chmod +x networktest.sh`  

Replace HOSTNAME with the host to test  
`nohup ./networktest.sh HOSTNAME > /tmp/networktest.out 2>&1 &`  

The bash job ID will appear in brackets, and the process ID (PID) listed after. For example:  
[1] 25132  

You can use the PID to terminate the process prematurely  

`kill -9 25132`  
