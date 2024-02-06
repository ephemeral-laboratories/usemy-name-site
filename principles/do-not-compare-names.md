# Principle: Do not attempt to match names to determine whether two names refer to the same person

This is probably the most intuitively obvious one.

People’s names are certainly not globally unique.

30,000 people in the US are named “James Smith”, the most common name.
[Source](https://fivethirtyeight.com/features/whats-the-most-common-name-in-america/)

The company I worked for at the time of writing this had an employee named Michael Jackson,
who had never released any hit singles, or at least, none I was aware of.

From this alone, you can not assume that if two names match, they’re the same person.
This is of course why we generally use email addresses, not names, as user IDs.

> - Fallacy 21: People’s names are globally unique.
> - Fallacy 22: People’s names are almost globally unique.
> - Fallacy 23: Alright alright but surely people’s names are diverse enough such that no million people
>   share the same name.

Beyond that, a single person can have multiple names. Even multiple _legal_ names.
Sometimes this happens during transition from one name to another, sometimes a person
may have multiple legal names for life. So it’s very possible that two names that _don’t_
match are in fact referring to the same person.

> - Fallacy 1: People have exactly one canonical full name.
> - Fallacy 2: People have exactly one full name which they go by.
> - Fallacy 3: People have, at this point in time, exactly one canonical full name.
> - Fallacy 4: People have, at this point in time, one full name which they go by.
> - Fallacy 5: People have exactly N names, for any value of N.
> - Fallacy 37: Two different systems containing data about the same person will use the same name for that person.

Even in the case of the “same name” being input into a computer twice, there are cases where
a person might have their name in different styles in different systems.

A case we should all be familiar with: a canonical representation of a Western name
will usually have some or all parts capitalised, but in some systems the name will have
been input in uppercase, because paper forms told the person to write everything in print capitals.

A more advanced case: When the name contains non-ASCII characters, these may have been input
as pre-composed Unicode characters, or using combining marks, depending on the software being
used to enter them. To cover this, it is always recommended to normalise any Unicode strings
which come from outside your system, including from the user, and including names.

> - Fallacy 12: People’s names are case sensitive.
> - Fallacy 13: People’s names are case insensitive.
> - Fallacy 38: Two different data entry operators, given a person’s name, will by necessity enter
>   bitwise equivalent strings on any single system, if the system is well-designed.

So in general, a system will not be able to use this information to determine conclusively
whether two names refer to the same person. If the names, along with other information,
is shown to an operator, they may be able to make the call on whether the two are really
the same person. For example, if the names are slightly different in their presentation,
but the two people were born on the same day, and born in the same small town, you can
be fairly certain the names refer to the same person.

Perhaps an advanced system could even keep track of all the official names it has seen
for the same person, which could also help for potential future deduplications.
