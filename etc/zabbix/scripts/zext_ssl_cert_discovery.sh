#!/usr/bin/perl
 
$first = 1;
 
print "{\n";
print "\t\"data\":[\n\n";
 
for (`cat /etc/zabbix/ssl_list/ssl.txt`)
{
    ($name, $port, $proto) = m/(\S+) (\S+) (\S+)/;
 
    print "\t,\n" if not $first;
    $first = 0;
$name =~ s/,\s*$//;
 
    print "\t{\n";
    print "\t\t\"{#NAME}\":\"$name\",\n";
    print "\t\t\"{#PORT}\":\"$port\",\n";
    print "\t\t\"{#PROTO}\":\"$proto\"\n";
    print "\t}\n";
}
 
print "\n\t]\n";
print "}\n";
