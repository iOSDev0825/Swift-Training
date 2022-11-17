//
//  main.swift
//  SwiftZone
//
//

func appendHello(toString str:String) -> String {
    "Hello "+str
}

print(appendHello(toString: "Radhika"))

func appendHelloLala(str:String) -> String {
    "Hello  LALA "+str
}

print(appendHelloLala(str: "Radhika"))

//"_" here is ignore
func appendRocks(_ str:String) -> String {
   "\(str) Rocks"
}


print(appendRocks("Radhika"))

var appendSomething:((String) -> String) = { str in
    "Hello "+str
}
print(type(of: appendSomething))
print(appendSomething("Radhikaa"))
appendSomething = appendHelloLala(str:)
print(type(of: appendSomething))
print(appendSomething("Radhikaa"))
appendSomething = appendRocks(_:)
print(type(of: appendSomething))
print(appendSomething("Radhikaa"))

var name = appendHelloLala(str: "Radhika")
print(type(of: name))
var newClosure = appendSomething
print(newClosure("SSS"))
let array = [1,2,3,4,5,6,7,8]
let evenArray = array.filter { num in
    print(num)
    return num % 2 == 0
}
print(evenArray)

func multipleOf3(num:Int) -> Bool{
    num % 3 == 0
}

let arrayOfMultipleOf3 = array.filter(multipleOf3(num:))
print(arrayOfMultipleOf3)

