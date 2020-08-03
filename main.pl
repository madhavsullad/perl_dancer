#!/usr/bin/perl
use Dancer2;

get '/' => sub {
    send_file 'index.html';
};

start;