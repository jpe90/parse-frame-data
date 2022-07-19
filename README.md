# parse-frame-data

This is a Haskell program I wrote to parse character data for a video game and generate Dart code for a flutter project. It's the first Haskell I wrote, and it's horrible, but it works and I shipped the result.

I hand rolled a parser combinator to grab the character data because I wanted an excuse to use parser combinators. It was fun, although that makes absolutely no sense and any HTML scraping library will outperform it and be easier to use by orders of magnitude.
