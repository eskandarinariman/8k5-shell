#!/bin/bash

sleep_time=10s

# Ethernet testing
echo ""
echo "##############################"
echo "         Ethernet Test"
echo "##############################"
echo ""
ping_result=$(ping 1.1.1.1 -c 15 | grep 0%)
echo $ping_result
if (grep -q "0%"<<<$ping_result)
then
	ethernet_test_result="Passed"
else
	ethernet_test_result="Failed"
fi
echo "------------------------------"
echo "Ethernet Test $ethernet_test_result"
echo "------------------------------"


echo ""
echo "##############################"
echo "      UDP Loopback Test"
echo "##############################"
echo ""

./client_fixed_length.py
sleep $sleep_time

echo ""
echo "##############################"
echo "        TCP echo Test"
echo "##############################"
echo ""

#./client_length_mt_fixed_char.py
#sleep $sleep_time

echo ""
echo "##############################"
echo "       PCIe and DDR Test"
echo "##############################"
echo ""

echo "Loading the driver..."
test_local_dir=$(pwd)
cd ../../../rozhkoda/Desktop/xdma_driver/tests/
driver=$(./load_driver.sh)
cd $test_local_dir
if(grep -q "DONE"<<<$driver)
then
	echo "PCIe Driver is loaded..."
	echo "Starting the Test..."
	sleep 3
	./run_test.sh
else
	echo "PCIe Driver could not be loaded"
fi


