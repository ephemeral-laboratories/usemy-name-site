# Principle: Do not attempt to “cleverly” sort names

If someone asks for names to be sortable, the best you can possibly do is basic
lexicographical sorting, or possibly Unicode collation. And even if you do one
of these, you can’t rely on the ordering you get back being consistent with someone
else’s attempt to do the same.

> - Fallacy 18: People’s names have an order to them.  Picking any ordering scheme
>   will automatically result in consistent ordering among all systems, as long as
>   both use the same ordering scheme for the same name.

Depending on the user using your system, the sort you come up with may not even make sense.
For example, some Scandinavian locales have interesting rules for collating names.
In languages like Japanese, the expected sorting depends on how the name is read,
which you can’t uniquely tell from how it is written. In these situations, you might
want to let the user add a second value for the name’s sort ordering, and then sort
on that field instead.
