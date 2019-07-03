# Multi-Pinger 

To get this working, firstly clone the GIT repo:

`git clone https://github.com/jhewittbjss/multi-ping-script`

Once that has been downloaded, navigate to the the 'main' directory

Make monitoring.sh executable:

`chmod +x monitoring.sh`

File.txt is full of Lorem Ipsum text. Inside of it contains a set of IPs. If you'd like to see the script in action, run the monitoring script now to see the output.

Before inserting your random bit of text, clear down file.txt.

` > file.txt `

Then using your text editor of choice, insert the block that contains your Ips:

`vi file.txt`

Once you've inserted your alarms start the monitoring script by doing:

`./monitoring.sh`

Let the script run and it will give you an output like this:

```
Tue Jul  2 15:26:55 UTC 2019 Pinging 10.254.251.1 now!
Tue Jul  2 15:26:55 UTC 2019 Node 10.254.251.1 down
Tue Jul  2 15:26:55 UTC 2019 Pinging 192.168.1.1 now!
Tue Jul  2 15:26:55 UTC 2019 Node 192.168.1.1 down
Tue Jul  2 15:26:55 UTC 2019 Pinging 8.8.8.8 now!
Tue Jul  2 15:26:55 UTC 2019 Node 8.8.8.8 is up
Tue Jul  2 15:26:55 UTC 2019 Script completed!
```

FAQ
====
You might see the following error when running the monitoring script:

`bash: ./monitoring.sh: /bin/bash^M: bad interpreter: No such file or directory`

To remedy this run this command against the monitoring.sh script:

`sed -i -e 's/\r$//' monitoring.sh` 

This will remove the offending bat interpreter.