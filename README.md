## FCC LicDB

A set of tools for exploring the FCC license database dumps.

https://www.fcc.gov/wireless/data

Actually what you see here is a way to download and then import most
of the weekly database dumps to an sqlite database. Expect a couple
gigabytes for `uls.db`, depending on how many services you import.

After that, the purpose of this repo gets more esoteric because it's
less about exploring and more about answering. (Answering what?)

## Project 219

There's a problem with the 219-220 MHz band. 47 CFR part 80 defines this
band (among others) as for Automated Maritime Telecommunications Systems
(AMTS), but that idea completely failed and so now there are no AMTS
stations, just companies licensed for AMTS that use the spectrum for
any other reason.

The restrictions on Amateur secondary use of the band defined in part 97
were designed for a world where AMTS stations were on the coast.  This,
along with other circumstance, define the problem that exists today -
it is nearly impossible to operate an Amateur radio on the band despite
hams deliberately being given the spectrum.

See https://github.com/tarxvftech/47CFR for more details on the whole thing.

I started *this* LicDB repo to figure out where these AMTS licensees
operate, and what they are using it for. The ULS database interfaces
available to the public are not sufficient for answering questions like
this (details in [W5NYV's first talk](https://www.youtube.com/watch?v=l6ds6RBufHI)).

But where a generic system may struggle, a more targeted approach can solve.

So What you see here is a functionality-first view of the FCC licensing
system mapping as much of the AMTS stations licensed or operating in
the 219-220MHz band as can be found in the database.

It's not perfect - working on data from other people and systems never
is - but it's a helluva lot better than all existing alternatives.


## Other projects

It's expected this would be useful for redoing W5NYV's exploration
into the demographics of Amateur Radio operators in the US:
https://github.com/Abraxas3d/Demographics

Similarly, it might be interesting to plot ALL the LO, PC, and other
entries, and then merge in the other data that isn't in the FCC database,
like ham radio repeaters, to try to make the radio services in the ether
around you that much more legible.
One would need to scale up and start using vector tiles, I assume.


## Sources not obvious from source
The `AMT_json.geojson` encodes the regions associated with the AMT spectrum auction, and was found via: https://www.fcc.gov/wireless/gis-wtb (scroll down! look for "AMT", not "AMTS")
