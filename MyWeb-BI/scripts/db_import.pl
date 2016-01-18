#!/usr/bin/perl  
open (FILE, '/home/ubuntu/workspace/MyWeb-BI/temp_files/data.txt');

while (<FILE>) { 
    chomp; 
    ($measurement_date, $invoice_status, $agency, $aging_bucket, $sum_of_trips, $sum_of_dollars ) = split("\t"); 
    print "Date: $measurement_date\n"; 
    print "Status: $invoice_status\n"; 
    print "agency: $agency\n";
    print "agency: $aging_bucket\n";
    print "agency: $sum_of_trips\n";
    print "agency: $sum_of_dollars\n";
    print "---------\n"; } 
    close (FILE); 
exit;