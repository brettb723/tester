#!/usr/bin/perl

use Amazon::S3;
use Data::Dumper;

my $AWS_ACCESS_KEY_ID     = 'AKIAJDFVYR34DOIBOYCA';
my $AWS_SECRET_ACCESS_KEY = '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';

my $conn = Amazon::S3->new({
        aws_access_key_id     => $AWS_ACCESS_KEY_ID,
        aws_secret_access_key => $AWS_SECRET_ACCESS_KEY,
        secure                => 1,
        retry                 => 1,
});


my $bucket = $conn->bucket("ptmsdata"); 

print "Getting stock data from S3 \n";

$bucket->get_key_filename('stock_metric.txt', undef,
        '/home/ubuntu/workspace/MyWeb-BI/temp_files/stock_metric.txt');

print "Done \n";

print "Getting flow data\n";


$bucket->get_key_filename('flow_metric.txt', undef,
        '/home/ubuntu/workspace/MyWeb-BI/temp_files/flow_metric.txt');
