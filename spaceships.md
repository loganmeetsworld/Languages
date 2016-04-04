# Planet Express
The purpose of this assignment is to introduce you to use classes, and to have you implement some of the methods of a class. The class properties have been provided to you, but you will need to finish the implementation of some of the methods of the class.
Our program is a game of keeping the crew of the _Planet Express_ happy. This crew (from the show _Futurama_) is represented by the class. It several integer properties, each tied to a specific character:

|      |                  |
|---------|---------------------|
| Thirst  | Fry’s thirst level |
| Work  | Leela’s unfulfilled work orders |
| Horde  | Bender’s horde of treasure |
| Hunger  | Zoidberg’s hunger level |
| Receipts  | Hermes’s backlog of receipts to process |


Your job is to implement the respective functions for the character’s properties. The amounts
of each property range from 0-100. The initial values of each property should be set at 50 in the
constructor - you can change these if you wish.

- `drink()` Decreases Fry’s thirst and increases Leela’s work
- `deliver()` Decreases Leela’s work and increases Hermes’ receipts
- `steal()` Increases Bender’s horde and increases Leela’s work
- `eat()` Decreases Zoidberg’s hunger and increases Leela’s work
- `account()` Decreases Hermes’ receipts and decreases Bender’s horde

You need to implement a scoring mechanism `score()` where the lower the thirst, work, and hunger, and the higher the horde, and receipts, the better the score.

Additionally, the class has the `boolean` flag `stable` (which is initialized as true), representing the crew’s ability to continue working together. If at any time one of the crew’s respective levels goes out of the specified bounds, this flag needs to be set to false, thus ending the game.

You also need to implement the `check()` function, which gets called each round of play. This function needs to return `true` if the crew is still stable, and `false` if it is not.

- The stability corresponds to the score: if the thirst, work, or hunger get too high, or if the
horde, or receipts get too low, the crew is no longer stable, and the Professor’s delivery
company falls apart (at which point, the game ends).

- It also needs to print out a warning for
each value if it is getting too high (or too low), such as if Hermes has too many receipts (but
not enough to crash the company). If it was enough to crash the company (perhaps more than
100), then the function would return `false`.
