directory=NTP

dump_loc="/NTP/dumper"

log_mod_name=ntp_fpga.ko
log_base=0x63C00000
log_length=0xFFFF
log_name="ntp_fpga"
log_irq=87
log_mjor=62
log_buffer=262144
log_dev_name=ntp_fpga

reg_mod_name=reg_driver.ko
reg_base=0x63C00000
reg_length=0xFFFF
reg_name="REG_CONTROLLER"
reg_mjor=61
reg_dev_name=fpga_registers






#insmod /$directory/$reg_mod_name register_address=$reg_base register_length=$reg_length device_name=$reg_name device_major=$reg_mjor
#mknod /dev/$reg_dev_name c $reg_mjor 0
#chmod 666 /dev/$reg_dev_name

insmod /$directory/$log_mod_name register_address=$log_base register_length=$log_length device_name=$log_name irq_number=$log_irq log_data_size=$log_buffer device_major=$log_mjor dumper_loc=$dump_loc
mknod /dev/$log_dev_name c $log_mjor 0
chmod 666 /dev/$log_dev_name
