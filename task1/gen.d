#!/usr/bin/env rdmd

import std.algorithm;
import std.conv;
import std.format;
import std.getopt;
import std.random;
import std.range;
import std.stdio;

void main(string[] args)
{
    long nrLines = 10;
    int nrColumns = 3;

    auto rnd = Random(42);
    alias rndGen = x => uniform(0, 1000, rnd);

    auto info = getopt(args,
        "lines|l", "Number of lines to generate", &nrLines,
        "columns|c", "Number of columns to generate", &nrColumns
    );
    if (info.helpWanted)
    {
        defaultGetoptPrinter("Random generator.", info.options);
        return;
    }

    // header
    nrColumns.iota
        .map!(i => format("col %d", i))
        .joiner(",")
        .writeln;

    foreach (_; 0..nrLines)
    {
        nrColumns
            .iota
            .map!rndGen
            .map!(to!string)
            .joiner(",")
            .writeln;
    }
}
