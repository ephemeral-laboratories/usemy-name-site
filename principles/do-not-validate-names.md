# Principle: Do not try to validate names

There are no “special characters” which should cause trouble when encountered in a name, yet people
regularly encounter cases of systems rejecting their names as “invalid”. Obviously, if a government
has recognised someone's name as their official name, then their name is valid. So don't try to be
clever and implement any kind of validation or cleanup beyond basic trimming of leading and trailing
whitespace and Unicode normalisation.

John Graham-Cumming [blogged about](https://blog.jgc.org/2010/06/your-last-name-contains-invalid.html)
the hyphen in his name being rejected by Yahoo in 2010, but you see this complaint on Twitter frequently today.

People with apostrophes in their names are picked on particularly often, quite possibly because
a developer heard about SQL injection attacks, and instead of fixing them properly, decided to
ban apostrophes in all fields.

Spaces can occur in names. Colons can occur in names. Most likely anything can occur in names,
so it's best not to restrict it at all.

> - Fallacy 15: People's names do not contain numbers.
> - Fallacy 16: People's names are not written in ALL CAPS.
> - Fallacy 17: People's names are not written in all lower case letters.
> - Fallacy 39: People whose names break my system are weird outliers.  They should have had solid,
>   acceptable names, like 田中太郎.

You can't even assume that a person won't have
[multiple name parts with the same value](https://en.wikipedia.org/wiki/List_of_people_with_reduplicated_names).

> - Fallacy 19: People's first names and last names are, by necessity, different.

And of course, you definitely can't assume that someone's name won't contain something that you
or your dictionary consider a “bad” word.

Several people with the surname Cummings on Twitter have been seen complaining about systems
rejecting their names.

In general, this problem is referred to as the
[Scunthorpe problem](https://en.wikipedia.org/wiki/Scunthorpe_problem).

> - Fallacy 31: I can safely assume that this dictionary of bad words contains no people's names in it.
