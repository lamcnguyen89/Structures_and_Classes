//
//  main.swift
//  Structures_and_Classes
//
//  Created by M_2022814 on 12/12/21.
//

import Foundation

// MARK: - Structures and Classes
// Structures an classes are general purpose and flexible constructs for storing related code.
// They are the building blocks of your program's code.
// To add functionality to structures and classes you define properties and methods. This includes constants, variables and functions

// Structures and classes have many things in common:
    // Define Properties to store values
    // Methods for functionality
    // Subscripts to provide access to their values using subscript syntax
    // Define Initializers to set up their intial state
    // can be extended to expand their functionality beyond a default implementation
    // Conform to protocols to provide standard functionality of a certain kind

// Classes have additional capabilities that structures don't have:
    // Inheritance enables one class to inherit the characteristics of another
    // Type Casting enables you to check and interpret the type of a class instancr at runtime
    // Deinitializers enable an instance of a class to free up any resources it has assigned
    // Reference counting allows more than one reference to a class instance

// The additional capabilities of a Class come at the cost of increased complexity. A general rule is to use structures unless the capabilities of a Class are specifically required.

// Syntax of Structure and Class:

struct SomeStructure {
    // Structure definitions go here
}

class SomeClass {
    // Class definitions go here
}

// Initializing Structures and classes:

let structureInstance = SomeStructure()
let classInstance = SomeClass()

// MARK: - Structures and Enumerations are Value Types
// A value type is a type whose value is copied when it's assigned to a variable or when passed to a function
// All the basic types in Swift- Integers, floating-point numbers, Booleans, strings, arrays and dictionaries - are value types and are implemented as structures behind the scenes

struct HDScreenResolution {
    var width = 1920
    var height = 1080
}
let hdScreen = HDScreenResolution()
var highDefScreen = HDScreenResolution()

highDefScreen.width = 2550
highDefScreen.height = 1440

var highDef = highDefScreen
highDef.height = 2348

print(hdScreen.height)
print(highDef.height)
print(highDefScreen.height)

// The original structure still has its old original values.

// MARK: - Classes are Reference Types
// Unlike Value Types, reference types are NOT copied whe they're assigned to a variable or constant, or when they're passed to a function.
// Rather than a copy, a reference to the same existing instance is used

class devilMan {
    
    var health = 3000
    var strength = 300
    var intelligence = 800
    var magic = 800
}

var devilMan1 = devilMan()
var devilMan2 = devilMan()

devilMan1.health = 50000

print("DevilMan2's New Health Value: \(devilMan2.health)") // Prints out Health = 3000 of original instance of class

var devilMan3 = devilMan1
devilMan3.health = 60000

print("DevilMan1's New Health Value as instanced from DevilMan1: \(devilMan1.health) ") // Prints 60000

// Because classes are reference types, it's possible for multiple constants and variables to refer to the same single instance of a class behind the scenes.
// The same isn't true for structures and enumerations because their always copied when assigned to a constant or variable

// MARK: - Pointers
// Pointers refer to addresses in memory. A Swift constant or variable that refers to an instance of some reference type is similar to a pointer in C but isn't a direct pointer to an address in memory.
// References to a memory address are defined like any other constant or variable in Swift
