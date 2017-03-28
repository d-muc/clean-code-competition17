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
    long nrBases = 20;

    auto rnd = Random(42);
    auto bases = ["A", "C", "G", "T"];
    alias rndGen = x => randomSample(bases, rnd);

    auto info = getopt(args,
        "bases|b", "Number of generated bases", &nrBases,
    );
    if (info.helpWanted)
    {
        defaultGetoptPrinter("Random generator.", info.options);
        return;
    }

    nrBases.iota
        .map!(x => bases.choice(rnd))
        .chunks(80)
        .each!(x => x.joiner.writeln);
}
