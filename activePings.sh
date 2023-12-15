#!/bin/bash
echo "REDE: $parameteIPNetwork" #Variavel do arquivo principal
echo "---------------------------------"
if [ "$1" == "" ] #usuário não passou argumentos
then
	echo "Usage: $0 [Your Ip Address Network ex:10.0.0]" #solicita argumento ao usuário
else
for host in {1..254};do #loop para pingar cada endereço na rede
	ping -c1 $1.$host | grep "64 bytes" | cut -d ":" -f1 | cut -d " " -f4
done
fi
