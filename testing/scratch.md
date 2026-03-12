---
title: Scratch File
---

Testing as much formatting as possible in one file.

## Headings

### Get smaller

#### And even smaller

##### And at a point they're so small they're smaller than the actual content

###### Really makes you think 🤔

## Code blocks

```ruby
def test {
  STDERR.puts('This should format nicely')
}

class MyModel
  validate_range :@height, :with => 1..120
  validate_range :@weight, :with => 1..1000
end
```

````md
```
You can also escape fenced code blocks, just build a bigger fence.
```
````

See, it wasn't that hard, ***WAS IT, DISCORD?***

## Quotation blocks

> Normal block quote
>
> Second paragraph inside the same block

> - This block quote contains a list
> - The list should be spaced roughly evenly at top and bottom too

{: .arbitrary }
Callouts are a common way to include tips inside larger flows of text.
Unfortunately, the current theme does not autogenerate the necessary CSS to make them work well.

{: .note }
Callouts can also have titles, if they are of a known type.

{: .warning }
Adding more types of callback is a major hassle.

> Quotation blocks can also have their title postfixed.
> {: title="Such a title"}

## Tables

| A | B | A ∨ B |
|--:|--:|------:|
| 0 | 0 |     0 |
| 1 | 0 |     1 |
| 0 | 1 |     1 |
| 1 | 1 |     1 |

Kramdown supports table extensions:

| Header1 | Header2 | Header3 |
|:--------|:-------:|--------:|
| cell1   | cell2   | cell3   |
| cell4   | cell5   | cell6   |
|----
| cell1   | cell2   | cell3   |
| cell4   | cell5   | cell6   |
|=====
| Foot1   | Foot2   | Foot3
{: rules="groups"}

## Hyperlinks

- [To other pages](common-excuses)
- [To other sites](https://example.com/)
