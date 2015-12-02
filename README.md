# Classy Methods

## Objectives

1. Accomplish the same tasks using literals, instance methods, and class methods.

## Instructions

Fork and clone this lab.

Open the `objc-classy-methods.xcodeproj` file. Navigate to `FISAppDelegate.m` and enter the following code-alongs into the `application:didFinishLaunchingWithOptions:` method.

### Code-Along I: `NSString`

#### A. Use an Instance Method

1. Create a new `NSString` variable called `katherine` and use the string literal to set it to `@"Katherine"`:
  *  `NSString *katherine = @"Katherine";`
2. Create a new `NSString` variable called `katherineHepburn` and use it to capture the return of calling the `stringByAppendingString:` method on `katherine` with `@" Hepburn"` supplied as the argument string (don't forget the leading space):
  *  `NSString *katherineHepburn = [katherine stringByAppendingString:@" Hepburn"];`
3. Use `NSLog()` to print `katherineHepburn` to the console:
  *  `NSLog(@"%@", katherineHepburn);`

This should print: `Katherine Hepburn`.

#### B. Use an `init...` Method

1. Create a new `NSString` variable called `james` and use the string literal to set it to `@"James"`:
  *  `NSString *james = @"James";`
2. Create a new `NSString` variable called `jamesStewart` and set use it to capture the return of calling the `alloc` and `initWithFormat:` method pair on `NSString`. Supply the argument with a format string with two object specifiers (`%@`) separated by a single space, the `james` string as the first specified object, and `@"Stewart"` as the second specified object: 
  *  `NSString *jamesStewart = [[NSString alloc] initWithFormat:@"%@ %@", james, @"Stewart"];`
3. Use `NSLog()` to print `jamesStewart` to the console:
  *  `NSLog(@"%@", jamesStewart);`

This should print: `James Stewart`.

#### C. Use a Class Method

1. Create a new `NSString` variable called `queen` and use the string literal to set it to `@"Queen"`:
  *  `NSString *queen = @"Queen";`
2. Create a new `NSString` variable called `queenElizabethII` and use it to capture the return of calling the `stringWithFormat:` class method called on `NSString` itself. Supply the argument with a format string with three object specifiers (`%@`) separated by a single space, the `queen` string as the first specified object, `@"Elizabeth"` as the second specified object, and the Roman numerals `@"II"` as the third specified object:
  *  `NSString *queenElizabethII = [NSString stringWithFormat:@"%@ %@ %@", queen, @"Elizabeth", @"II"];`
3. Use `NSLog()` to print `queenElizabethII` to the console:
  *  `NSLog(@"%@", queenElizabethII);`

This should print: `Queen Elizabeth II`.

### Code-Along II: `NSArray`

#### A. Use the Array Literal

1. Create a new `NSArray` variable called `classyThings` and use the array literal to set it to an array containing the strings `@"monocle"`, `@"top hat"`, and `@"martini glass"`:
  *  `NSArray *classyThings = @[ @"monocle", @"top hat", @"martini glass" ];`
2. Use `NSLog()` to print `classyThings` to the console:
  *  `NSLog(@"%@", classyThings);`

This should print:

```
(
    monocle,
    "top hat",
    "martini glass"
)
```

#### B. Use an Initializer Method

1. Create a new `NSArray` variable called `classyPeople` and use it to capture the return of calling the `alloc` and `initWithObjects:` method pair on `NSArray`. Supply the argument with a list of the three full-name string objects from Code-Along I, end the list with `nil`:    
  *  `NSArray *classyPeople = [[NSArray alloc] initWithObjects:@"Katherine Hepburn", @"James Stewart", @"Queen Elizabeth II", nil];`
2. Use `NSLog()` to print `classyPeople` to the console:
  *  `NSLog(@"%@", classyPeople);`

This should print:

```
(
    "Katherine Hepburn",
    "James Stewart",
    "Queen Elizabeth II"
)
```

#### C. Use a Class Method

1. Create a new `NSArray` variable called `classyDrinks` and use it to capture the return of calling the `arrayWithObjects:` class method on `NSArray` itself. Supply the argument with a list of strings; `@"Old Fashioned"`, `@"Churchill Martini"`, `@"Prosecco"`; and end the list with `nil`:
  *  `NSArray *classyDrinks = [NSArray arrayWithObjects:@"Old Fashioned", @"Churchill Martini", @"Prosecco", nil];`
2. Use `NSLog()` to print `classyDrinks` to the console:
  *  `NSLog(@"%@", classyDrinks);`

This should print:
 
```
(
    "Old Fashioned",
    "Churchill Martini",
    Prosecco
)
```

### Code-Along III: `NSDictionary`

#### A. Use the Dictionary Literal

1 — Create a new `NSDictionary` variable called `classyByLiteral` and use the dictionary literal to set it to a dictionary containing three keys; `@"classy things"`, `@"classy people`", and `@"classy drinks"`; which each point to an empty array literal:

```objc 
NSDictionary *classyByLiteral = @{ @"classy things" : @[],
                                   @"classy people" : @[],
                                   @"classy drinks" : @[]
                                   };
```
2 — Populate the value arrays with the following strings:

  * for `@"classy things"`, populate its value array with `@"monocle"`, `@"top hat"`, and `@"martini glass"`,
  * for `@"classy people"`, populate its value array with `@"Katherine Hepburn"`, `@"James Stewart"`, and `@"Queen Elizabeth II"`, and
  * for `@"classy drinks"`, populate its value array with `@"Old Fashioned"`, `@"Churchill Martini"`, and `@"Prosecco"`:

```objc
NSDictionary *classyByLiteral = @{ @"classy things" : @[ @"monocle"            ,
                                                         @"top hat"            ,
                                                         @"martini glass"      ],
                                   @"classy people" : @[ @"Katherine Hepburn"  ,
                                                         @"James Stewart"      ,
                                                         @"Queen Elizabeth II" ],
                                   @"classy drinks" : @[ @"Old Fashioned"      ,
                                                         @"Churchill Martini"  ,
                                                         @"Prosecco"           ]
                                   };
```
3 — Use `NSLog()` to print `classyByLiteral` to the console:

  *  `NSLog(@"%@", classyByLiteral);`

This should print, in some order:

```
{
    "classy drinks" =     (
        "Old Fashioned",
        "Churchill Martini",
        Prosecco
    );
    "classy people" =     (
        "Katherine Hepburn",
        "James Stewart",
        "Queen Elizabeth II"
    );
    "classy things" =     (
        monocle,
        "top hat",
        "martini glass"
    );
}
```

#### B. Use an Initializer Method

1. Create a new `NSDictionary` variable called `classyByInit` and use to capture the return of calling the `alloc` and `initWithObjectsAndKeys:` method pair on `NSDictionary`. Use the array variables from Code-Along II to supply the argument with a list of the three arrays each followed by the associated key string to create a dictionary that matches the one above:
  *  `NSDictionary *classyByInit = [[NSDictionary alloc] initWithObjectsAndKeys:classyThings, @"classy things", classyPeople, @"classy people", classyDrinks, @"classy drinks", nil];`  
  **Top-tip:** *Be careful to list the "object" before the "key". This is inverted from the order of* `key : object` *when using the dictionary literal.*
2. Use `NSLog()` to print `classyByInit` to the console:
  *  `NSLog(@"%@", classyByInit);`

This should print a dictionary matching the one from section A. Verify that the keys and objects are not inverted:

```
// correct key : value order

{
    "classy drinks" =     (
        "Old Fashioned",
        "Churchill Martini",
        Prosecco
    );
    "classy people" =     (
        "Katherine Hepburn",
        "James Stewart",
        "Queen Elizabeth II"
    );
    "classy things" =     (
        monocle,
        "top hat",
        "martini glass"
    );
}
```

```
// incorrect key : value order

{
        (
        monocle,
        "top hat",
        "martini glass"
    ) = "classy things";
        (
        "Katherine Hepburn",
        "James Stewart",
        "Queen Elizabeth II"
    ) = "classy people";
        (
        "Old Fashioned",
        "Churchill Martini",
        Prosecco
    ) = "classy drinks";
}
```


#### C. Use a Class Method

1 — Create a new `NSDictionary` variable called `classyByClass` and use it to capture the return of calling the `dictionaryWithObjects:forKeys:` class method on `NSDictionary` itself. Supply the first argument with an array literal containing the three arrays from Code-Along II, and supply the second argument with an array containing the key string literals that match the keys used in sections A and B. *Make sure to keep them in the correct order!*:

```objc
NSDictionary *classyByClass = [NSDictionary dictionaryWithObjects:@[classyThings, classyPeople, classyDrinks]
                                                          forKeys:@[@"classy things", @"classy people", @"classy drinks"]];
```

2 — Use `NSLog()` to print `classyByClass` to the console:

  *  `NSLog(@"%@", classyByClass);`

This should print another dictionary that matches the dictionaries from sections A and B:

```
{
    "classy drinks" =     (
        "Old Fashioned",
        "Churchill Martini",
        Prosecco
    );
    "classy people" =     (
        "Katherine Hepburn",
        "James Stewart",
        "Queen Elizabeth II"
    );
    "classy things" =     (
        monocle,
        "top hat",
        "martini glass"
    );
}
```

![](https://curriculum-content.s3.amazonaws.com/ios-intro-to-objects-unit/like_a_sir.jpg)

<a href='https://learn.co/lessons/objc-classy-methods' data-visibility='hidden'>View this lesson on Learn.co</a>
