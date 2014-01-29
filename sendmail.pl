#Perl mailer utility
#sudo perl -MCPAN -e 'install Email::Send::Gmail'

#!/usr/bin/perl



use strict;
  use warnings;
  use Email::Send;
  use Email::Send::Gmail;
  use Email::Simple::Creator;

  my $email = Email::Simple->create(
      header => [
          From    => 'sanj.jush@gmail.com',
          To      => 'sanj.judh@gmail.com',
          Subject => 'Problems with the site',
      ],
      body => 'Site is Dead, Check all script and find problem... Sanj!',
  );

  my $sender = Email::Send->new(
      {   mailer      => 'Gmail',
          mailer_args => [
              username => 'sanj.judh@gmail.com',
              password => 'sanj9347',
          ]
      }
  );
  eval { $sender->send($email) };