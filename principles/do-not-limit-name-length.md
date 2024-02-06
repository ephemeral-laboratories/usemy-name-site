---
---

# Principle: Do not impose a limit on name length

When designing a database, it's fairly common to think that names can be packed into a reasonably
small VARCHAR field, but any limit you put in there will eventually be broken by someone.
It is much more correct to put the name into a blob with a very large or no maximum size.

You frequently see people complaining about fields which restrict names to insanely short lengths
like 30, or even 15 characters, but much longer names exist.

> - Fallacy 6: People's names fit within a certain defined amount of space.

A corollary which the original fallacy list omits is that there is no minimum length for names
either. A large number of web forms require 3 or more characters to consider a name valid.
I personally know people with names 2 characters long, and I've heard that 1 character
long names are out there.
i.e., you should not assume that a 1 character long name is an initial, either.
This means you too, Nextdoor.
