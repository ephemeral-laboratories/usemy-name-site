---
title: "Principle: If possible, allow a person to input their name as an image and/or sound"
---

If you really want to allow entering 100% of people's names, you have to face
the possibility that their name is not representable in current Unicode code points.

For some names in Taiwan, the character is simply not in Unicode yet, even if it's
representable in the local character set (CNS 11643). In some cases, the characters
may map to the Unicode private use area, which you can't assume to remain the same over time.
In some cases, the character may not be available in their local character set yet either.

Allowing a user to write their name as an image, or speak it as a sound recording,
covers the last of these cases, even though it may not be an easy thing to implement well.
Granted, this is going to be a very rare case, and if someone has a sound for their name,
you might be able to get away with a phonetic representation anyway.

> - Fallacy 11: People's names are all mapped in Unicode code points.
> - Fallacy 28: That Klingon Empire thing was a joke, right?
