#!/bin/bash

ip=$(curl -s https://api.ipify.org)
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
        }
    ]
}"
