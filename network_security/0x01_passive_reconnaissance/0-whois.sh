#!/bin/bash
whois $1 | awk '/^(Registrant|Admin|Tech) (Name|Organization|Street|City|State\/Province|Postal Code|Country|Phone|Phone Ext:|Fax|Fax Ext:|Email):/{sub(/: /,",",$0);if(/Street,/)$0=$0" ";if(/Ext:,/)sub(/Ext:,/,"Ext:,",$0);print}' | head -c -1 > $1.csv && echo >> $1.csv
