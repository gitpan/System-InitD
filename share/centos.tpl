#![% PERL %]
#
# [% service %]:    [% description %]
#
# chkconfig:    35 86 14
# description:  [% description %]


### END INIT INFO

# This script generated by geninit tool

use strict;
use warnings;

use System::InitD::Runner;

# Config
# path to pidfile here:
my $PID             = '[% pid_file %]';
# start command here:
my $START_COMMAND   = "[% start_cmd %]";
# EXACT process name here:
my $PROCESS_NAME    = '[% process_name %]';
my $USAGE           = 'start|stop|usage|status';

# Run
my $runner = System::InitD::Runner->new(
    usage               =>  $USAGE,
    # proces name here:
    process_name        =>  $PROCESS_NAME,
    # start cmd here
    start               =>  $START_COMMAND,
    restart_timeout     =>  5,
    pid_file            =>  $PID,
    user                =>  '[% user %]',
);

$runner->run();

exit 1;
