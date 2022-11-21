//
//  main.swift
//  SwiftZone
//
//
import Foundation

func appendHello(_ str:String) -> String {
    return "Hello "+str
}

let appendHello1:((String) -> String) = {inputString  in
    print("passed input arg is \(inputString)")
    return "Hello1 \(inputString)"
}

print(appendHello("GG"))
print(appendHello1("GG"))

//print(appendHello(toString: "Radhika"))
var appendHello2:((String) -> String)? = appendHello(_:)
print(appendHello2?("GGupta"))
appendHello2 = nil
print(appendHello2?("GG"))
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

func perform(named:String, work _work:() -> Void, onCompletion handler:()->Void ){
    print("name of the work to do is \(named)")
    _work()
    handler()
}

perform(named: "Dance Dance Disco Disco") {
    print("Radhika disco disco")
} onCompletion: {
    print("Gaurav enjoys")
}
perform(named: <#T##String#>, work: <#T##() -> Void#>, onCompletion: <#T##() -> Void#>)
func perform(work _work:() -> Void, onCompletion handler:()->Void, havingName name:String ){
    print("name of the work to do is \(name)")
    _work()
    handler()
}

perform(work: {
    print("GG")
}, onCompletion: {
print("DDDD")
}, havingName: "Disco Disco")

