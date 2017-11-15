# Callbacks

This is a sample code which uses callbacks/closures instead of protocols for delegation.  

Advantage of using callbacks/closures:

1) Faster compile time with lesser files, classes, and other definitions
2) Easier to TDD w/o need of making spy and implementing protocol
3) Lesser modification needed when refactoring w/o having view ports as protocols
4) Optionality. In protocols you can only have optional methods if you put @objc.  With callbacks/closures, you can just set the closure to nil if you don't need to implement it - no @objc needed.

Disadvantages:

1) Readablity and consistency in code may suffer if there is no standard way of defining callbacks
2) Closures are not easy to understand in a glance.
