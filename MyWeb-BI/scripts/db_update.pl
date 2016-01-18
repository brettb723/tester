use DBI;
use Data::Dumper;
use feature qw(say);

my    $host = '0.0.0.0';
my    $db = 'Business_Intel';
my    $username = 'postgres';
my    $password = 'Business9821';
my    $port = 5432;


$dbh = DBI->connect("dbi:Pg:dbname=$db;host=$host;port=$port",
                      $username,
                      $password,
                      {AutoCommit => 1, RaiseError => 1, PrintError => 0}
                     );

say "Truncating table";
$dbh->do(" TRUNCATE stock_metrics;");
 
say "Loading new Stock_Metrics to db";
$dbh->do("COPY stock_metrics(measurement_date,invoice_status,agency,aging_bucket,sum_of_trips,sum_of_dollars) FROM '/home/ubuntu/workspace/MyWeb-BI/temp_files/stock_metric.txt' with (format csv,  HEADER, delimiter E'\t') ;" 
);

say "Truncating flow_metrics";
$dbh->do(" TRUNCATE flow_metrics;");

say "Loading new flow_metrics to db";
$dbh->do("COPY flow_metrics(measurement_date,name,metric_type,agency,numerator,denominator) FROM '/home/ubuntu/workspace/MyWeb-BI/temp_files/flow_metric.txt' with (format csv,  HEADER, delimiter E'\t') ;" 
);
  
  
$dbh->disconnect();       

