Answers to assignment 1 of week 2
---------------------------------

a) The two size classes in iOS are classes for the horizontal and vertical size of devices. In portrait mode it is .regular vertically and .compact horizontally, while both are .compact in landscape mode.

b) Continuous Learning means to always going on in learning and never be finished. This is important in mobile dev since the base technologies evolve (eg Swift in version 5.9 has many new features), new technologies enter the scene (SwiftUI, Combine, SwiftData) and there are many frameworks and tools around which also evolve (CI/CD, DevOps, Cloud).

c) To find the modifiers of a particular view in the UI: Look in the source code. I remember from the videos, that one can set the canvas in Xcode to selectable and then select elements of the UI in the canvas and find, where they are in the code editor, but I cannot find info about this, and if I try this out, it does not work with simple clicking, cmd-clicking, alt-clicking or ctrl-clicking. So I'm clueless here.

d) A breakpoint is a line in the source code, where a debugger will stop execution. Then it is posssible to inspect variables, evaluate expressions ... and then go on in different ways (continue program execution, step over, step into, step out).

e) Access environment values with the property wrapper @Environment, eg @Environment(\.verticalSizeClass) var verticalSizeClass

f) @Environment(\.colorScheme) var colorScheme and then compare it with .dark or .light

g) Magic numbers make it more difficult to evolve an app, it is difficult to see eg if a number 10 should be changed to 12 which 10s have to be edited. Better: Define named constants in an enum

h) To view an app in light and dark mode simultaneously: Define two previews 
ContentView()
      .preferredColorScheme(.light)
ContentView()
      .preferredColorScheme(.dark)

i) The modifier padding was set after the modifier background.

j) Button("Delete").padding(.horizontal, 10)

k) Reasons for extracting views: Avoid duplication of code, if a certain view with modifiers can be used several times. Avoid one huge code file, which ContentView could become without extracting.

l) For iPhones: Check if verticalSizeClass is .regular (portrait mode) or .compact (landscape mode).

m) A constant value in code, eg 5 for Int or "Hello" for String. In C++ this is called a rvalue (can only be on the right hand side in an assignment)

o) Safe areas: Areas within a view which are not covered by a navigation bar, tab bar, toolbar. So they are safe to show content which may not be hidden.

p) Here we have the ternary operator (also called the elvis operator), which is a short syntax variant for if-else. The frame gets width 200 if wideShapes is true and 100 otherwise.

q) Transitions are eg .opacity and .scale

r) The Game struct is the model of the Bullseye App.

s) Some thousends of icons which can be used similar to characters - they adapt to font size and can be colored.

t) "step into" would step into a function call, but "step over" would not step into that, but instead stop at the next line after the function call has returned.

u) Image Set, Color Set, Symbol Image Set, Data Set

v) Select the top entry in project navigator. This shows an dialog, which has an entry for Display Name.



    




