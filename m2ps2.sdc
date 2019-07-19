create_clock -period 20.0 -name clock  [get_ports clock]
create_generated_clock -source clock -divide_by 50000 [get_keepers kclock]
