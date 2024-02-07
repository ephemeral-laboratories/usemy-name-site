---
title: "Principle: Do not attempt to transform names"
---

Although this fallacy is perhaps vaguely worded (it's easy to come up with algorithms
to transform any string to some kind of encoding and back), there are problems with
some transformations you might try to perform.

Perhaps you think that you can uppercase a name for storage and then somehow get back
the original name and capitalise it correctly. In practice, this is impossible,
because it requires knowing which parts of a name had a capital letter at the front,
which some parts may not have had. In some cultures, it is also considered conventional
to leave the entire surname in uppercase.

Instead, you want to leave the name alone and store it as the user entered it.
The only transform you should be doing is Unicode normalisation.

> - Fallacy 30: There exists an algorithm which transforms names and can be reversed losslessly.
>   (Yes, yes, you can do it if your algorithm returns the input.  You get a gold star.)
