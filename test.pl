# $Id: test.pl,v 1.3 2004/04/22 15:41:21 cvonroes Exp $

# Updated Miles 1/20/2009

use HTTP::QuickBase;

#Assign and define variables
my $qdb = HTTP::QuickBase->new();
my $username="depositor";
my $password="Password";
my $dbName="QuickBase Support Center";

$qdb->authenticate("$username","$password");

$dbid = $qdb->getIDbyName($dbName);

if ($dbid eq "9kaw8phg")
    {
    print "Congratulations QuickBase.pm has been successfully installed!\n \n";
    exit(0);
    }
else
    {
    print "QuickBase.pm is not properly installed. \n";
    print "QuickBase Error response: ", $qdb->errortext, "\n";
    print "Please verify you can access this QuickBase Link from your Browser \n";
    print "https://www.quickBase.com/db/9kaw8phg \n";
    print "If requested, you may use the User Name=depositor, Password=Password \n";
    print "Sometimes this error is because SSL support (Crypt:SSLeay) may not have been installed for LWP. \n"
    }

