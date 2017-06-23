# 8k5-shell
 
The following interconnections are included in this shell
 
1- PCIe

2- Ethernet

3- UDP

4- TCP

5- DDR4

 
For more information please read the report and presentation, which are available in the repository.
 
# Build
For building this shell one tcl script is available that is called recreate.tcl.

Note: this project is built using vivado 2016.3 
 
# Test
In system_test_script directory, there are plenty of different tests available; however, the entire_system_test.sh is the general one that tests all the interconnections including Ethernet, UDP, TCP, and PCIe. For ethernet it simply pings the FPGA device. For UDP and TCP it sends a message to FPGA, and gets it back (There are UDP loopback application and TCP echo server in hardware side to make this test possible).
 
# Application
In this shell user application could be replaced by UDP loopback core (UDP application), echo server (TCP application), or min_sum_decoder (PCIe application). 
 
 
