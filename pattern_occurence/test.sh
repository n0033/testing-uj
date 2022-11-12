#!/bin/bash

javaclass=$1
filepath=$2

tests_passed=0
tests_failed=0
tests_total=0

while read -r line;
do
    if [ "$line" == ""  ]; then
    	continue
    fi

    args=($line)
    test_result=$(java -cp . $javaclass ${args[0]} ${args[1]})
    result=$(echo $test_result | awk '{print $NF}')

    if [ $result == "string" ]; then
	result=-1
    fi

    if [ $result == ${args[2]} ]; then
	tests_passed=$((tests_passed + 1))
    else
	tests_failed=$((tests_failed + 1))
    fi

    tests_total=$((tests_total + 1))

done < $filepath

echo -e "Tests passed:\t${tests_passed}"
echo -e "Tests failed:\t${tests_failed}"
echo -e "Tests total:\t${tests_total}"

