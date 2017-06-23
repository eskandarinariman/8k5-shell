set_property PACKAGE_PIN AV18    [get_ports "user_sw_l"]
set_property IOSTANDARD LVCMOS33 [get_ports "user_sw_l"]

set_max_delay -from [get_ports "user_sw_l"]  100
set_min_delay -from [get_ports "user_sw_l"] -100
