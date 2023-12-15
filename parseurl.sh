#!/bin/bash
if [ "$parameterURL" == "" ] 
then
	echo "Exemplo de uso: $0 $1 URL" 
else
	echo "Subdomínios em $parameterURL:"
	rm index.html 
	rm lista 
	wget -q $parameterURL 
	grep href index.html | cut -d "/" -f3 | grep "\." | cut -d "\"" -f1 |
	grep "$parameterURL" | sort -u > lista 
	for url in $(cat lista);do host $url;done | grep "has address" | sort -u 
fi
