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
