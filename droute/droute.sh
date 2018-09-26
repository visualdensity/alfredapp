#!/bin/bash

ip=$(netstat -rn -f inet | grep default | awk '{print $2}')
echo "{
    \"variables\": {
        \"query\": \"$ip\"
    },
    \"items\": [
        {
            \"title\": \"$ip\",
            \"arg\": \"$ip\",
            \"text\": {
                \"copy\": \"$ip\"
            }
        },
        {
            \"title\": \"https://$ip\",
            \"arg\": \"https://$ip\",
            \"quicklookurl\": \"https://$ip\",
            \"text\": {
                \"copy\": \"https://$ip\"
            }
        },
        {
            \"title\": \"http://$ip\",
            \"arg\": \"http://$ip\",
            \"quicklookurl\": \"http://$ip\",
            \"text\": {
                \"copy\": \"http://$ip\"
            }
        }
    ]
}"
