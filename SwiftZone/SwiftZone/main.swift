//
//  main.swift
//  SwiftZone
//
//

var name = "Gaurav"
var firstChar:Character = .init("C") //basic character declaration

var firstCharOfName = name.first
print(firstCharOfName)
print(type(of: name[name.startIndex]))
//name = ""
//print(type(of: name[name.startIndex])) //using [] notation, collection can not be empty, else will cause error
//Fatal error: String index is out of bounds
var droppedChar = name.dropFirst()
print(type(of: droppedChar))
print(droppedChar)
print(name)
var removeChar = name.removeFirst()
print(removeChar)
print(type(of: removeChar))
print(name)
//print(name[name.endIndex]) //Fatal error: String index is out of bounds
var effectiveLastIndex = name.index(before: name.endIndex)
print(name[effectiveLastIndex])
effectiveLastIndex = name.index(name.endIndex, offsetBy: -1)
print(name[effectiveLastIndex])
print(name)
var poppedChar = name.popLast()
print(type(of: poppedChar))
print(poppedChar)
print(name)
print(name.last)
print(name)
