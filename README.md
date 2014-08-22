rodash
======

Hey Rubyist stuck in JavaScript land! Tired of calling `_` everywhere in your code?
And remembering what those damn underscore function names are?
Now you don't have to. Just use the good old Ruby and Rails idioms
that feel so much better.

Rodash features the performance of lodash wrapped in traditional Ruby conventions
for your coding comfort. We even have a sprinkling of ActiveSupport magic too, so
you don't miss home too much.

Incidentally, when you use this in your project, some JavaScript purists might point out
that extension of native prototypes is a bad thing. Tell 'em to loosen up a little.

No more:

``` coffee
_.map [1, 2, 3], (num) -> num * 3
```

Now you can:

``` coffee
[1, 2, 3].map (num) -> num * 3
```

Want to modify that array in place, functional programming be damned?

``` coffee
array = [1,2,3]
array.mapBang (i) -> i*2
```
Boom! Now `array` contains `[2,4,6]`

### ActiveSupport Emulation

Want some english from your array? No oxford comma yet, though. (Send me a pull request!)

``` coffee
['coffee', 'milk', 'sugar'].toSentence()
```
returns `"coffee, milk and sugar"`

## Documentation

This project is written using Literate Coffeescript. Just look at the source code to read the documentation.
https://github.com/obie/rodash/blob/master/src/rodash.litcoffee
