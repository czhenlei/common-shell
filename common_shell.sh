#!/bin/bash
#tcpnet
#show tcp state

#state			count
#FIN_WAIT_1		4
#FIN_WAIT_2		15
#LAST_ACK		4
#CLOSE_WAIT		15
#TIME_WAIT		2
#ESTABLISHED	6

#tcpstat.sh
netstat -f inet -p tcp -n | awk '{if(NR < 3){next} state[$NF]++}END{printf("state\t\tcount\n");for (item in state) printf("%s\t%d\n", item, state[item])}'
