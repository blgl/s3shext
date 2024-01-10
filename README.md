# WHAT

How to use a database to manage classes and methods for the upcoming
extensible SQLite3 shell.

# WHY

Because I found the current way of doing things insufficiently
[DRY](https://en.wikipedia.org/wiki/Don%27t_repeat_yourself),
and I'm an irreverent person.

# I DON'T EVEN

`shext-schema.sql` defines the schema.

`shext-data.sql` contains class and method data extracted
from the current tip of the cli_extension branch.

Once you have loaded up a database with the above, you can generate
useful bits of code from it.  Recommended CLI settings are:

```
    .mode tabs
    .headers off
```

`generate-declarations.sql` produces declarations of the base classes
(DotCommand, etc.) and their vtables.  (To be used by the SQLite team,
of course.)

`generate-skeleton.sql` produces a skeleton implementation
of a derived class.  Bind the `:base` and `:derived` parameters
to appropriate class names.  (To be used by anybody.)

