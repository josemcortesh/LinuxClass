mem=$( free | grep Mem | awk '{print $3}')
load5=$( cat /proc/loadavg | awk '{print $2}')
diskused=$(df | grep /dev/sda1 | awk '{print $5}' | cut -d '%' -f 1 )

#echo $load5

curl --silent --request POST --header "X-THINGSPEAKAPIKEY: HNGG4HXST11TWI69" --data "field1=${mem}&field2=${load5}&field3=${diskused}" "http://api.thingspeak.com/update" 
