#!/bin/bash
#Add Printers
lpadmin -E -p "Printer1" -v "LPD://192.168.11.182/printer1" -P "/Users/mac01cosy/Desktop/printerAdd/drivers/RICOH IM C4500" -o printer-is-shared=false
lpadmin -E -p "Printer2" -v "LPD://192.168.11.183/printer2" -P "/Users/mac01cosy/Desktop/printerAdd/drivers/RICOH IM C3000" -o printer-is-shared=false
cupsaccept Printer1
cupsaccept Printer2
cupsenable Printer1
cupsenable Printer2

cd /Applications/PaperCut\ MF/providers/print/mac/
sudo ./configure-cups -add Printer1
sudo ./configure-cups -add Printer2