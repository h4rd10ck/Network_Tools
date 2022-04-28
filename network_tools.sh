#!/bin/bash 
###############################################
#            --Network Tools--                #
#        --Simple Bash Training--             #
#---------------------------------------------#
# Creator : Cedric H.                         #
# Version : 3.1                               #
# Last update : 28/04/2022                    #
###############################################
clear
#=============INTRO===========================
printf "\e[0m\e[1;31;0m
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠻⢿⣿⣿⣿⣶⣶⣾⣿⣶⣶⣶⣦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣄⡀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⢿⡿⠿⠿⠛⠛⢿⣿⣿⡆⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⣠⣶⠿⣿⣿⡇⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⢀⣴⣾⠟⠁⠀⠈⢿⣿⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣀⣀⣀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠁⠀⣠⣴⠿⠋⠀⠀⠀⠀⠀⢸⣿⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣉⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣅⣠⣾⡟⠁⠀⠀⠀⢀⣀⣤⣤⣸⡿⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠘⠒⠲⠚⠛⠋⢹⣵⣿⢿⣿⣿⣿⠿⣿⣿⣿⣿⣿⣿⣿⡛⡁⢄⣼⣿⣟⣿⠶⡀⣽⢷ ⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠒⠚⣻⣿⣾⣿⠿⢛⣡⢖⣿⣿⣿⣿⣿⡿⠟⠫⡏⢻⡝⢯⣿⠛⠚⠃⣿⣿⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⣤⠀⢉⣿⣿⡏⠹⡞⣉⣴⣿⠿⠃⠈⠉⠁⠀⢀⡜⠁⠀⢇⠀⠀⠀⠀ ⠀⣿⣿⠀⠀⡄
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣧⡀⠀⠀⠀⠀⠀⣬⠀⠀⠀⢸⡄⠀⠀⠀⣴⣿⣿⣷⣶⠟
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⣿⣿⣿⣿⣿⣿⠁⠀⠉⠻⡆⠀⠀⠀⠀⠳⡾⠦⣤⠾⠽⠀⠀⣸⣿⣿⣿⣿⣿⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⢸⣿⣿⣿⣿⣿⣿⣇⣂⡄⠀⢳⠠⢶⡾⠷⣶⡧⣶⢻⣶⡾⣿⢶⣿⣿⣿⣿⣄⡛⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⠟⢿⣿⣿⣿⣿⣷⡻⣿⣮⡿⣷⡒⢟⡓⠚⠚⠛⣛⡿⢮⣟⣿⡟⢻⠟⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⢹⢿⣿⢻⢿⣦⣹⣴⣿⣇⣀⢨⣭⠽⣿⣥⣀⣾⣿⠟⠁⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣼⢸⣽⣏⣇⠙⣿⣿⣷⣻⣿⣿⣿⣿⣧⣿⣿⣟⢸⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⡤⢶⣿⢿⣿⣿⣯⣿⣿⣼⠶⠼⣿⣿⣿⣾⣿⣿⣾⣿⣾⣯⢬⣼⠀⠀⠀⠀⠀⠀⠀
⠀⠀⣠⢤⣀⣠⣴⣯⣴⠿⠿⣷⠿⢤⡀⠈⠻⣏⢹⣿⣿⡔⡄⠘⣿⣿⣇⣀⣠⣄⣸⣿⡁⣼⣼⢳⣤⡀⠀⠀⠀⠀
⣤⣞⣀⠀⢹⣟⠉⠉⢻⡀⠀⠹⣤⡷⢻⢦⠀⠙⣾⣿⣿⢿⡜⢀⣿⢿⣌⣋⣠⣬⣹⣿⡇⣇⣿⡏⠀⢽⡄⠀⠀⠀
⣿⣿⣿⣧⠀⢿⡄⠀⠀⢷⡀⠀⢿⣶⣼⣌⣧⣀⡘⣿⣿⣼⣿⣾⠏⠈⣯⣉⣀⣀⠀\e[1;36m𝕯r.𝕸𝖆𝖈𝖍𝖎𝖓𝖊 \e[0m
\n"
printf "\e[0m\n"
sleep 0.25
clear
#=============INTRO===========================
function menu {

    printf "\e[0m\e[36m"
    printf "    _   __     __                      __   \n"
    printf "   / | / /__  / /__      ______  _____/ /__\e[0m\e[32m\n"
    printf "  /  |/ / _ \/ __/ | /| / / __ \/ ___/ //_/\n"
    printf " / /|  /  __/ /_ | |/ |/ / /_/ / /  / ,<   \n"
    printf "\e[0m\e[35m/_/_|_/\___/\__/ |__/|__/\____/_/  /_/|_|  \e[0m\e[32m\n"
    printf " /_  __/___  ____  / /____                 \n"
    printf "  / / / __ \/ __ \/ / ___/                 \n"
    printf " / / / /_/ / /_/ / (__  )                  \n"
    printf "\e[0m\e[35m/_/  \____/\____/_/____/                   \e[0m\n\n"
    printf "\e[1;31m" 
    sleep 0.25                                        
    echo ""
    echo "------------------------"
    echo "         MENU           "
    echo "------------------------"
    echo "[1] Network"
    echo "[2] Subnetting"
    echo "[3] Monitoring"
    echo "[4] Exit"
    echo "------------------------"
    printf "\e[0m"

    read saisie
    case $saisie in


        1)

            clear
            #On check si nmap est installé
            check_nmap=$(dpkg -s nmap | head -n 1 )
	        check_curl=$(dpkg -s curl | head -n 1 )
            if [[ "$check_nmap" =~ "Package: nmap" ]]
                then
                clear
                echo "#####################"
                else
                while true
                    do
                    printf "\033[41m\033[93mThis script need Nmap to run.\n"
                    printf "Would you like to install it ?\n\e[0m"
                    echo "(Type : [Y] for Yes [N] for No)"
                    read OoN
                    if [[ "$OoN" =~ ^[y|Y]$ ]]
                        then
                        sudo apt install nmap -y
                        break

                        else
                        exit 0
                    fi
                done
            fi
            if [[ "$check_curl" =~ "Package: curl" ]]
                then
                clear
                echo "#####################"
                else
                while true
                    do
                    printf "\033[41m\033[93mThis script need Curl to run.\n"
                    printf "Would you like to install it ?\n\e[0m"
                    echo "(Type : [Y] for Yes [N] for No)"
                    read OoN
                    if [[ "$OoN" =~ ^[y|Y]$ ]]
                        then
                        sudo apt install curl -y
                        break

                        else
                        exit 0
                    fi
                done
            fi
            clear
                    printf "\e[1;31m"
                    echo "---------------------------------------------"
                    echo " ▐▐▐▐▐▐▐▐▐▐        NETWORK       ▐▐▐▐▐▐▐▐▐▐  "
                    echo "---------------------------------------------"
                    printf ""
                    sleep 0.5                                        
                    echo ""
                    echo "------------------------"
                    echo "         MENU           "
                    echo "------------------------"
		            echo "[1] Show my public IP"
                    echo "[2] Show DNS server(s)"
                    echo "[3] Scan my Network"
                    echo "[4] Back to Menu"
                    echo "------------------------"
                    printf "\e[0m"
                        read nets
                    case $nets in

                        1)
                        curl ifconfig.io
                        sleep 5
                        clear
                        menu
                        ;;
			
                        2)
                        cat /etc/resolv.conf | grep nameserver
                        sleep 5
                        clear
                        menu
                        ;;
                        
                        3)

                        clear
                        inet=$(sudo lshw -class network | grep logical.\name: | awk '{print $3}')
                        echo "---------------------------------------------"
                        echo " ▐▐▐▐ SCANNING ALL MACHINES ON NETWORK ▐▐▐▐  "
                        echo "---------------------------------------------"
                        inet2=$(ip a | grep $inet | awk '{print $2}' | tail -n 1)
                        echo -e "    ==>Your Machine: $inet2               "
                        echo "              Please wait ...                "
                        echo "---------------------------------------------"
                        sudo nmap -sn $inet2 | grep Nmap.\scan.\report
                        sleep 15
                        clear
                        menu
                        ;;

                        4)
                        clear
                        menu
                        ;;

                        *)
                        echo "*"                
                        ;;

                    esac
        ;;

        2)
            #On check si BC est installé
            check_bc=$(dpkg -s bc | head -n 1 )

            if [[ "$check_bc" =~ "Package: bc" ]]
                then
                clear
                echo "#####################"
                else
                while true
                    do
                    printf "\033[41m\033[93mThis script need Basic Calculator to run.\n"
                    printf "Would you like to install it ?\n\e[0m"
                    echo "(Type : [Y] for Yes [N] for No)"
                    read OoN
                    if [[ "$OoN" =~ ^[y|Y]$ ]]
                        then
                        sudo apt install bc -y
                        break

                        else
                        exit 0
                    fi
                done
            fi
            clear
                printf "\e[1;34m"
                printf "   _____       __               __  __  _            \n"
                printf "  / ___/__  __/ /_  ____  ___  / /_/ /_(_)___  ____ _\n"
                printf "  \__ \/ / / / __ \/ __ \/ _ \/ __/ __/ / __ \/ __  /\n"
                printf " ___/ / /_/ / /_/ / / / /  __/ /_/ /_/ / / / / /_/ / \n"
                printf "/____/\__,_/_.___/_/ /_/\___/\__/\__/_/_/ /_/\__, /  \n"
                printf "                                            /____/ \n"
                printf "\e[0m"

            #Sous-Réseaux	1	2	4	8	16	32	64	128	256	
            #Nb Host	   256 128	64	32	16	8	4	2	1	
            #Masque	       /24	/25	/26	/27	/28	/29	/30	/31	/32	
            #---------------------------------------------------
            while true
                do
                function check_ipCIDR {
                    printf "\e[1;31m"
                    echo "---------------------------------------------"
                    echo " ▐▐▐▐▐▐▐▐▐▐ Type The IP and CIDR ▐▐▐▐▐▐▐▐▐▐  "
                    echo "---------------------------------------------"
                    printf "\e[0m"

                    check_maskreg='([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])'
                    check_ipreg='([0-9]|[12][0-9]|3[012])'
                    while true
                        do
                        IFS= read -rp 'IP/CIDR: ' ips1
                            if [[ $ips1 =~ ^$check_maskreg(\.$check_maskreg){3}/$check_ipreg$ ]];
                                then
                                        rmask=$(echo "$ips1" | tail -c 3 )
                                        #echo $rmask
                                        #---
                                        #point de démarrage à 1
                                            i=1
                                            #condition pour sortir de la boucle 
                                            until [ $i -gt $rmask ]
                                                do
                                                echo -e "1\c" read line echo >> /tmp/line2
                                                #expr
                                                (( i=i+1 ))
                                            done
                                            #-------------------
                                            tt=$((32-$rmask))
                                            #point de démarrage à 1
                                            i=1
                                            #condition pour sortir de la boucle
                                            until [ $i -gt $tt ]
                                                do
                                                echo -e "0\c" read line2 >> /tmp/line2
                                                #expr
                                                (( i=i+1 ))
                                            done
                                            #-------------------
                                        #32-24=8 32-$line=8 incrément de 8 "0"
                                    break
                                else
                                    printf "\e[1;31m error ! \e[0m\n"
                                continue
                            fi
                    done

                }
            break 
            done
            check_ipCIDR
                ipfinal=$(cat /tmp/line2)
                #echo $ipfinal
                octet01=$(echo $ipfinal | cut -c 1-8 )
                octet02=$(echo $ipfinal | cut -c 9-16 )
                octet03=$(echo $ipfinal | cut -c 17-24 )
                octet04=$(echo $ipfinal | cut -c 25-32 )    
                #echo "$octet01 $octet02 $octet03 $octet04"
                #Adresse reseau + $nbrhost
                    function convertion2()
                    {
                    RECUP_INFO2=({0..1}{0..1}{0..1}{0..1}{0..1}{0..1}{0..1}{0..1})
                    ip=""
                    for byte in `echo ${1} | tr "." " "`; do
                        ip="${ip}.${RECUP_INFO2[${byte}]}"
                    done
                    echo ${ip:1}
                    }
                    ipconv=`convertion2 "${ips1}"`
                    #echo $ipconv
                    rass=$(echo $ipconv)
                    bin50=$(echo $rass | cut -c 1-8)
                    bin51=$(echo $rass | cut -c 10-17)
                    bin52=$(echo $rass | cut -c 19-26)
                    bin53=$(echo $rass | cut -c 28-35)
                    ipconvf=$(echo "$bin50$bin51$bin52$bin53")
                    #echo $ipconvf
                    addition=$(echo "$ipconvf + $ipfinal" | bc)
                    #echo $addition
                    resultat=$(echo $addition | tr "1" 0 | tr "2" 1 )
                    #echo $resultat
                    fifi=$()
                    #/23
                    #2^9(nbrzero) = 512
                    #-------------------
                    gg=$((32-$rmask))
                    #point de démarrage à 1
                    m=1
                    #condition pour sortir de la boucle
                    until [ $m -gt $gg ]
                        do
                        echo -e "0\c" read line2 >> /tmp/line3
                        #expr
                        (( m=m+1 ))
                    done
                    #-------------------
                    nbrzero=$(cat /tmp/line3 | wc -c)
                    xcalc=$((2**$nbrzero-2))
                    xcl=$((2**$nbrzero))
                    if [[ $nbrzero -gt 8 ]] ; then
                    chgoct=$(($nbrzero-8))
                    xcl2=$((2**$chgoct))
                    fi
                    #echo $xcalc
                echo -e "|--------------------------------------------|"  
                netzero=$(echo -e "== Network 1=> \e[32m$((2#"$bin50")).$((2#"$bin51")).$((2#"$bin52")).0\033[0m")
                echo $netzero
                q=$xcl
                o=2
                
                if [[ $xcl -gt 255 ]] ; then
                echo -e "== Subnet 1 => \e[32m$((2#"$bin50")).$((2#"$bin51")).$((2#"$bin52")).1-->$((2#"$bin50")).$((2#"$bin51")).$(($xcl2-1)).254\033[0m"
                elif [[ $xcl -lt 0 ]] ; then
                echo -e "== Subnet 1 => \e[32m$((2#"$bin50")).$((2#"$bin51")).$((2#"$bin52")).1-->$((2#"$bin50")).$((2#"$bin51")).$((2#"$bin52")).0\033[0m"
                else
                echo -e "== Subnet 1 => \e[32m$((2#"$bin50")).$((2#"$bin51")).$((2#"$bin52")).1-->$((2#"$bin50")).$((2#"$bin51")).$((2#"$bin52")).$((($q)-2))\033[0m"
                fi
                if [[ $xcl -lt 255 ]] ; then
                echo -e "=Broadcast 1=> \e[32m$((2#"$bin50")).$((2#"$bin51")).$((2#"$bin52")).$q\033[0m"
                else
                echo -e "=Broadcast 1=> \e[32m$((2#"$bin50")).$((2#"$bin51")).255.255\033[0m"
                fi
                until [ $q -gt 255 ]
                do
                
                echo -e "|--------------------------------------------|" 
                echo -e "== Network $o=> \e[32m$((2#"$bin50")).$((2#"$bin51")).$((2#"$bin52")).$q\033[0m"
                echo -e "== Subnet $o => \e[32m$((2#"$bin50")).$((2#"$bin51")).$((2#"$bin52")).$(($q+1))-->$((2#"$bin50")).$((2#"$bin51")).$((2#"$bin52")).$((($q+$q)-2))\033[0m"
                echo -e "=Broadcast $o=> \e[32m$((2#"$bin50")).$((2#"$bin51")).$((2#"$bin52")).$((($q+$q)-1))\033[0m"
                echo -e "|--------------------------------------------|" 
                ((q=q+q))
                ((o=o+1))
                done
                echo -e "|--------------------------------------------|"
                if [[ $xcl -lt 255 ]] ; then
                echo -e "= Broadcast => \e[32m$((2#"$bin50")).$((2#"$bin51")).$((2#"$bin52")).255\033[0m"
                else
                echo -e "=Broadcast 1=> \e[32m$((2#"$bin50")).$((2#"$bin51")).255.255\033[0m"
                fi
                echo -e "|--------------------------------------------|" 
                echo -e "===  Mask  ==> \e[32m$((2#"$octet01")).$((2#"$octet02")).$((2#"$octet03")).$((2#"$octet04"))\033[0m"
                echo -e "|--------------------------------------------|" 
                #echo -e "===== Total Hosts =====> \e[32m 2^$nbrzero = $xcalc\033[0m"
                printf "\n"
                rm /tmp/line2
                rm /tmp/line3
        sleep 1
        while true
            do
            echo "Back to Menu [X]"
            read response
            if [[ $response =~ ^[x|X]$ ]] ; 
                then
                clear
                menu
                else
                echo -e "\e[1;31mBad entrie\033[0m"
                continue
            fi
        done
        sleep 60
        clear
        menu

        ;;

        3)
            #On check si fping est installé
            check_bc=$(dpkg -s fping | head -n 1 )

            if [[ "$check_bc" =~ "Package: fping" ]]
            then
            clear
            echo "#####################"
            else
            while true
            do
            printf "\033[41m\033[93mThis script need Fping to run.\n"
            printf "Would you like to install it ?\n\e[0m"
            echo "(Type : [Y] for Yes [N] for No)"
            read OoN
            if [[ "$OoN" =~ ^[y|Y]$ ]]
            then
            sudo apt install fping -y
            break

            else
            exit 0
            fi
            done
            fi
            trap ":" INT
            ### COLORS
            greenbackground="\e[42m\033[30m"
            orangebackground="\e[43m\033[30m"
            redbackground="\033[41m\033[93m"
            greenbar="\e[102m\033[32m"
            orangebar="\e[103m\033[33m"
            redbar="\e[101m\033[31m"


            ### VARS
            t1="60"
            t2="120"
            t3="300"
            graf=""
            i="0"
            cols=$(tput cols)
            speed="250"

            function piping {
            printf "\e[32m>>Monitoring Tool\n"
            printf "    ____  _____   ________ \n"
            printf "   / __ \/  _/ | / / ____/ \n"
            printf "  / /_/ // //  |/ / / __  (o_\n"
            printf " / ____// // /|  / /_/ /  //\ \n"
            printf "/_/   /___/_/ |_/\____/   V_/_ \e[0m\n"
            printf "(Back to Menu [X])\n\n"

            printf "\e[1m\e[32mIP:\e[0m"
            read p

            if [[ $p =~ ^[x|X]$ ]]
                then
                clear
            fi


            tput sc
            clear


            ### BABASH
            tput sc
            #fping -q $p

            check="$p is unreachable"
            fping_result=$(fping $p)
            if [ "$fping_result" == "$check" ]
            then
            #Si ho"st down
            echo "Host down"
            fi
            if [[ $p =~ ^[x|X]$ ]]
                then
                clear
                #action pour Back to Menu
                menu
                
                #continue #choisir ma boucle
            fi

            tput rc
            ### BABASH

            tput rc

            fping -l -p$speed $p | while read line
            do

            ### TESTS
                testcolor=$(echo $line | awk '{print $6}')
                time=$(echo $line | awk '{print $6,$7}')
                count=$(echo $line | awk '{print $3}')
                count=${count%?}
                loss=$(echo $line | awk '{print $10,$11}')
                loss=${loss%?}
                avg=$(echo $line | awk '{print $8}' | cut -c2-5)

            ### COLOR TESTS
                if (( $(echo "$testcolor <= $t1" | bc -l) ))
                then
                color=$greenbackground
                color2=$greenbar
                elif (( $(echo "$testcolor <= $t2" | bc -l) ))
                then
                color=$orangebackground
                color2=$orangebar
                else 
                color=$redbackground
                color2=$redbar
                fi

            ### PRINT
            echo -e "$color $count : $time : $loss : $avg\x1b[K\033[m"
            tput sc ; tput cup 0 0 ; tput el ;
            printf "\033[41m\033[93m[Ctrl+C to stop it] \033[m\e[38;5;82mServer UP: $p\n\x1b[K\033[m" ;
            tput rc
            graf=$(printf "$graf$color2▐\033[m")
                if (( $i == $cols ))
                then
                graf=""
                i="0"
                fi
            i=`expr $i + 1`
            tput sc ; tput cup 1 0 ; echo -e "$graf" ; tput rc
            done
            }


            while true
            do
            clear
            piping
            done

        ;;

        4)
            clear
            exit 0
        ;; 

        *)
            clear
            echo "Bad Entrie"
            sleep 1
            echo "Please Make your choice : [1],[2],[3] or [4]..."
            sleep 2
            clear
            menu
        ;; 

    esac

}
clear
menu
#FIN


