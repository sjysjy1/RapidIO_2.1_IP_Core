# RapidIO_2.1_IP_Core
This repository contains an ISE project which implements a RapidIO 2.1 IP(Intellectual Property) core with Verilog HDL. It's a serial $1\times$/$4\times$ RTL level IP core, which includes logical transmitting and receiving modules, transmitting and receiving buffer modules and a serial physical layer module. And the serial physical module is divided into a serial protocol layer module, a physical coding sublayer(PCS) module and a physical medium attachment(PMA) module.  The commonly used operations of read(NREAD), write(NWRITE), write_with_response(NWRITE_R), streaming_write(SWRITE) and local and remote maintenance read/write(MAINTENANCE READ/MAINTENANCE WRITE) are supported.

The testing code is also included in this reporsitory. To designed IP core is tested to communicate with the commercial IP core of Xilinx. It's set as a master or slave to read and write packages from the commercial IP core. 


