#OFFMODZ Sh                                                                                                           
#Main                                                      

#apt update; apt upgrade; pkg install dnsuntil; pkg install wget

echo "««««««««««««««««««««««««««««««««««««"
echo "»              PSTWEB              «"                
echo "»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»"                
echo ">>Creator OFFMODZ"                                   
echo "Alerta: Esse script não é mil maravilhas e ele não ira fazer um pentest totalmente, e sim fazer você conseguir mais informações sobre o site rápidamente."                 
echo "Alert: This script isn't great and it won't do a full pentest, it will make you get more information about the site quickly."                                              
#Coding                                                    
echo "««««««««««««««««««««««««««««««««««««"                
whois $1 | sed "/URL of the ICANN Whois Inaccuracy Complaint Form/,/You agree that you may use this Data only/d" | grep -E --color '([ A-Za-z ])\.{0,40}:.[ A-Za-z ]{1,90}.{0,90}'
echo "»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»"                
nslookup $1 | grep -E --color "Server:*"                   
nslookup $1 | grep -E --color "Address:.[0-9]{3}"
host google.com | cut -d' ' -f3,4,5 | grep -E --color "addr
ess"

echo "»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»"
netstat -tup | grep -E --color ".[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}"

if [ $2 = "S" ] || [ $2 = "Y" ] || [ $2 = "Ss" ] || [ $2 = "s" ] || [ $2 = "y" ] || [ $2 = "Sim" ] || [ $2 = "Yes" ];then
        wget -r $1
                                                                   
        echo "«««««««««««««««««««««««««««««««««««"
        echo "Site baixado com sucesso :)"
        #echo "Website dowloeded with sucess :)"

        if [ $3 = "S" ] || [ $3 = "Y" ] || [ $3 = "Ss" ] || [ $3 = "s" ] || [ $3 = "y" ] || [ $3 = "Sim" ] || [ $3 = "Yes" ];then
                echo "»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»"

                grep -E -i --color "(admin|Script|.js|.com)" $1/index.html
        fi
fi