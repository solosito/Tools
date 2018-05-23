### Network test usage
Clone the repo  
```
mkdir ~/Tools && cd "$_"
git clone https://github.com/solosito/Tools .
```  

Make the script executable  
`chmod +x networktest.sh`  

Run logging command:  
`nohup bash ~/Tools/networktest.sh <hostname> <delay> <iface> </dev/null > <log_file_path> 2>&1 &`  

Parameters:  
* `<hostname>` the host to test  
* `<delay>` the time to wait before sampling again  
* `<iface>` the network interface to test  
* `<log_file_path>` the file to store the data logged


The time delay format is defined as follows:  
`NUMBERsuffix`  
Where suffix may be:  
* s for seconds (the default)  
* m for minutes  
* h for hours  
* d for days  

**Use example  **
`nohup bash ~/Tools/networktest.sh 192.168.168.1 5m wlan1 </dev/null > /tmp/networktest.out 2>&1 &`

The bash job ID will appear in brackets, and the process ID (PID) listed after. For example:  
[1] 25132  

You can use the PID to terminate the process prematurely  

`kill -9 25132`  

The log can be checked in the `<log_file_path>`
