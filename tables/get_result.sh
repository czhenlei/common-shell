#!/bin/bash

cat table1 | awk  -F ";" '{if(length($2) == 0 && NR >= 13) printf("%s\n",$1); }' | awk 'BEGIN{printf("\t\tMon\tTus\tWed\tThu\tFri\tSat\tSun");count=0}{
	if($1 != "&nbsp" && length($1) < 10){ 
		printf("\n\n\n%8s",$1);
		count=0;
	}else{
		count++;
		if(count%2==0){
			printf("\t%s",$1);
		}
	}}'