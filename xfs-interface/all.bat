load --os /home/expos/myexpos/spl/spl_progs/os_startup.xsm
load --exhandler /home/expos/myexpos/spl/spl_progs/haltprog.xsm
load --int=timer /home/expos/myexpos/spl/spl_progs/timer.xsm
load --int=disk /home/expos/myexpos/spl/spl_progs/disk.xsm
load --int=console /home/expos/myexpos/spl/spl_progs/console.xsm
load --int=6 /home/expos/myexpos/spl/spl_progs/int_6_read.xsm
load --int=7 /home/expos/myexpos/spl/spl_progs/int_7_write.xsm
load --int=9 /home/expos/myexpos/spl/spl_progs/int_9_exec.xsm
load --int=10 /home/expos/myexpos/spl/spl_progs/int_10_exit.xsm
load --module 0 /home/expos/myexpos/spl/spl_progs/mod_0_resource.xsm
load --module 1 /home/expos/myexpos/spl/spl_progs/mod_1_process.xsm
load --module 2 /home/expos/myexpos/spl/spl_progs/mod_2_memory.xsm
load --module 4 /home/expos/myexpos/spl/spl_progs/mod_4_device.xsm
load --module 7 /home/expos/myexpos/spl/spl_progs/mod_7_boot.xsm
load --module 5 /home/expos/myexpos/spl/spl_progs/mod_5_switch.xsm
load --init /home/expos/myexpos/expl/expl_progs/init.xsm
load --idle /home/expos/myexpos/expl/expl_progs/idle_code.xsm
load --library /home/expos/myexpos/expl/library.lib