use DBI;
use Data::Dumper;;

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



 
$dbh->do('CREATE TABLE flow_metrics 
    (
          ID SERIAL PRIMARY KEY,
          measurement_date    date,
          name    VARCHAR(100),
          metric_type    VARCHAR(100),
          agency VARCHAR(100),
          numerator real,
          denominator real
  
    );' 
);
  
  
$dbh->disconnect();       

