#!/bin/bash

pressAnyButton(){
	echo "Pressione qualquer tecla para continuar"
	read -n 1 -s
}

if [ $# -ne 2 ]; then
    echo "Usage: $0 [Your Ip Address Network ex:10.0.0] [URL]"
    exit 0
fi


parameteIPNetwork=$1
parameterURL=$2
file1="activePings.sh"
file2="parseurl.sh"
escolha=0

while [[ $escolha -ne 4 ]]; do
    clear
    echo "  #######  ##    #  #######  #######  #######     ##   ######       ##    #######           ##    #  #######  #######   #    # ";
	echo "  ##    #  ###   #  ##    #  #    ##  ##          ##   ##           ##    #     #           ##    #  ##    #  ##    #   #   ## ";
	echo "  ##    #  ####  #  ##    #  #    ##  ##          ##   #####        ##    #                 ##    #  ##    #  ##        #  ## ";
	echo "  #######  ## ## #  ##    #  #######  #####       ##   ######             #######           #######  #######  ##       ##### ";
	echo "  ##    #  ##  ###  ##    #  ##   ##  ##          ##   #####                   ##           ##    #  ##    #  ##       ##  ## ";
	echo "  ##    #  ##   ##  ##    #  ##   ##  ##          ##   ##                 #    ##           ##    #  ##    #  ##    #  ##   ## ";
	echo "  ##    #  ##    #  #######  ##   ##  #######     ##   ######             #######           ##    #  ##    #  #######  ##    # ";


    echo "======== MENU ========"
    echo ""
    echo "1. Verificar IPs ativos na rede"
    echo "2. Verificar Arvores De Subdomínios"
    echo "3. Fazer anotações Arquivo Texto"
    echo "4. Sair"
    echo "======================"
    echo -n "Qual é o seu objetivo? "
    read escolha


    case $escolha in
    1)
    	clear
        echo "Varredura de IPs ativos na rede iniciada..."
        if [[ -f "$file1" ]]; then 
        	source $file1 
        	#cat "$trainingFile"
        fi
        pressAnyButton
        ;;
    2)
    	clear
        echo "Verificação de Arvores de Subdomínios Iniciada"
        if [[ -f "$file2" ]]; then        	
        	source $file2
        fi
        pressAnyButton
        ;;
    3)
    	clear
        echo "Grave em um arquivo texto suas observações"
        read -p "Digite o nome do arquivo txt: " txtNameInput
        nano "$txtNameInput.txt"
        pressAnyButton
        ;;
    4)
        echo "Saindo..."
        ;;
    *)
        echo "Opção inválida!"
        ;;
    esac	
    echo
done


echo "Fim do programa."



