---
title: "Internet Standards Dealing with Names"
---

An investigation into various internet standards which define how to specify names.
Ongoing research - the goal is to see whether any excuses like "the standards didn't allow it"
could be legitimate.

vCard Format Specification (RFC 6350)

- FN (full name) is mandatory;
- N (name components) is optional, and if present, can contain as many elements as necessary;
- No requirement to include first or last name

jCard: The JSON Format for vCard (RFC 7095)

- Doesn't say anything specific about what’s required, just how to translate between vCard←→jCard.

JSON Responses for the Registration Data Access Protocol (RFC 9083)

- JSON structure is essentially a vCard;
- "fn" (full name) member is mandatory, but may be blank if redacted;
- “n” (name components) is treated the same as in vCard.
