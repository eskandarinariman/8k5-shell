set_property PACKAGE_PIN AT19    [get_ports "led_l[0]"] ; # USER_LED_G0
set_property IOSTANDARD LVCMOS33 [get_ports "led_l[0]"]

set_property PACKAGE_PIN AU19    [get_ports "led_l[1]"] ; # USER_LED_G1
set_property IOSTANDARD LVCMOS33 [get_ports "led_l[1]"]

set_property PACKAGE_PIN AU20    [get_ports "led_l[2]"] ; # USER_LED_R
set_property IOSTANDARD LVCMOS33 [get_ports "led_l[2]"]

set_max_delay -to [get_ports "led_l[*]"]  100
set_min_delay -to [get_ports "led_l[*]"] -100
