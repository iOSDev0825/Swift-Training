//
//  main.swift
//  SwiftZone
//
//

var name = "Gaurav" //stored variable or stored property

    //following is an example of read-only variable/property
var upperCaseName:String {
    name.uppercased()
}

var _name:String = ""
    //Following is an example of property having getters and setters
var computedName:String{
    get {
        _name.lowercased()
    }
    set{
        _name = newValue.uppercased()
    }
}

//Following shows the concept of Observers
var doesSunRisesInEast = true {
    didSet{
        print(oldValue)
    }
    willSet{
        if newValue == true{
            print("Correctly set")
        }
        else {
            print("Screwed up concepts on sunset and sunrise as of now")
        }
    }
}

print(doesSunRisesInEast)
doesSunRisesInEast = false


//Introduction to Tuples
let httpResponse = (400, "Failure due to missing element")
print(httpResponse.0)
print(httpResponse.1)

let setOfG8 = Set<String>(["USA","RUSSIA","CHINA","JAPAN","GERMANY","SOUTH KOREA","ITALY","FRANCE"])
for element in setOfG8.enumerated(){
    print(element.offset)
    print(element.element)
}


//Optionals
var dictOfCountriesAndCapitals = ["India" :  "Delhi"]
dictOfCountriesAndCapitals["USA"] = "Washington D.C"
print(dictOfCountriesAndCapitals["Afghanistan"])
print(type(of: dictOfCountriesAndCapitals["India"]))
print(type(of: setOfG8.first))
var newArray:[Int] = .init()
//print(newArray[0])
print(newArray.first)
var name_first:Optional<String> = .some("Gaurav")
var name_second:String!  = "GG"
var name_captured:String = name_second
print(type(of: name_captured))
name_captured = name_first != nil ? name_first!:"NA"
name_second = name_second != nil ? name_second:"NA"

