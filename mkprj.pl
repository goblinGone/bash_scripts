#!/usr/bin/perl

#   make project script,
#   be sure to check the file paths if errors are thrown
#

use warnings;
use Time::Piece;

sub clear_screen {
    system("clear");
}
clear_screen();
my $date = localtime->strftime('%Y-%m-%d');
print "*********************************************\n".
"** Make Project script\n".
"*********************************************\n".
"** please offer a name: ";
my $name = <STDIN>;
chomp($name);
$name=~s/ /-/g;
print "* please offer priority; ";
my $priority = <STDIN>;
chomp($priority);

my $dirStorage = "/home/goblin/Project_archive/$name";
mkdir $dirStorage; #or die "could not create Directory '$dirStorage' $!";
print "** done makeDir\n";
my $projfile = "/home/goblin/Zettel/GoblinKnows/FOREST/04-dataBase/projects/$name.md";
open(my $fh, '>', $projfile) or die "could not open file '$projfile' $!";
print $fh "---\n".
"alias:\n".
"cssclass:\n".
"lastReviewed:\n".
"isProject: true\n".
"note:\n".
"priority: $priority\n".
"projCompleted:\n".
"projectType:\n".
"status: planning\n".
"date: $date\n".
"---\n".
"**Related:**\n".
"-\n".
"# $name\n\n\n\n\n".
"[$name folder](file:///home/goblin/Project_archive/$name)\n".
"[This project is licenced using the Gnu GPLv3](https://www.gnu.org/licenses/gpl-3.0.en.html)";
close $fh;
print "** done project page\n";
