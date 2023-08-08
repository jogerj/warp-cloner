#!/bin/bash

docker exec $(docker container ls --all --filter=ancestor=warp-cloner-runner --format "{{.ID}}") cat output.txt | tee -a output.txt

sort -u output.txt | uniq -u > new_output.txt

mv new_output.txt output.txt
