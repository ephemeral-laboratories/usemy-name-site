---
title: "Common Excuses"
---

In this section, common excuses or justifications for incorrect handling of names
are addressed and debunked. By highlighting these excuses, users can become more aware
of potential pitfalls and learn how to overcome them when encountering challenges
in using names correctly.

So far, all of these were gathered while filing complaints myself.


## “There is no standard way to represent names with only one part!”

My own passport is proof that there is a standard way to represent it.

- The first name field is left blank
- The machine-readable section shows only the first name - this has broken
  some badly-written applications, such as that made by the company Persona,
  who LinkedIn use for their verification.
- The NFC data stores an empty string for the first name, so the full name
  comes out as “, BLAH”.

Worth noting is that “last name only” is not an accurate representation
of my own name, which is officially “first name only”. However, a limitation
in the way the machine-readable section is displayed prevents distinguishing
these two cases. At some point in the distant future, the removal of the
machine-readable section should eventually solve this problem, but passports
are a notoriously slow-moving technology, so I may not be around anymore by
the time this gets fixed.

Digital iD made this even harder for themselves, by making the user
enter their name on one screen, and then reading their passport on the
next screen. A much simpler and less error-prone way to implement the
same thing would be to read the passport first. Then assume that what
the passport says about the user's name is accurate. It is, after all,
a primary ID document.

## “Our users asked us to require both first name and last name!”

Do you have a problem where you always respond “yes” to user requests?

- What if they asked you to implement daylight savings logic incorrectly
  for the location the product would be used?
- What if they asked you to record personal data about the people who use
  the system, such as their religions, for covert data processing?
- Would you be so eager to implement everything exactly as the user says,
  when it violates regulations in your industry?
- Do you really _need_ a regulation to be in place, to do the right thing?
  Or are your morals stronger than that?

As an engineer, it is your job to say “no” to unrealistic, immoral, and
incorrect requests. If you just say “yes” to everything your user asks for,
you're not doing your job.

Shopify made this claim while I was reporting the issue to them, but when
I pressed for concrete reasons for why two name parts were needed, they
were unable to give any. Likewise, every time this one has been used by
other companies, when I pressed for reasons, nobody seemed to know what
the point of enforcing two names was.

I can tell you for certain that it isn't making it any simpler to search
for names in the system. What you want for that, is for everyone to have
their accurate name in the system. Forcing two name parts ensures that all
these people will have false names in the system, which will only make
things worse for someone trying to find them.

My own name is on the electoral roll as one name only, and it just
ends up in the list sorted along with the rest of the names. I have
experienced two elections since changing it, and neither time did they
have any issue finding my name in the book.
