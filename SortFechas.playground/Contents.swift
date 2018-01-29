//: Playground - noun: a place where people can play

import UIKit

// Example

struct obj {
    var id = ""
    var nombre = ""
    var fecha = ""
    var date = Date()
}

var obj1 = obj()
var obj2 = obj()
var obj3 = obj()
var obj4 = obj()

obj1.nombre = "A"
obj1.fecha = "2017-12-19"

obj2.nombre = "C"
obj2.fecha = "2018-12-17"

obj3.nombre = "B"
obj3.fecha = "2018-11-01"

obj4.nombre = "D"
obj4.fecha  = "2019-01-01"

let myObjs = [obj1, obj2, obj3, obj4]

// Aux Arr
var dateFormatter2 = DateFormatter()
dateFormatter2.dateFormat = "yyyy/MM/dd"

var arrObj = [obj]()

for obj in myObjs {
    var newObj = obj
    
    newObj.date = dateFormatter2.date(from: obj.fecha)!
    arrObj.append(newObj)
}
// Print Before
for arrO in arrObj {
    print("Nombre: \(arrO.nombre) - Fecha: \(arrO.fecha) - Date: \(arrO.date)")
}

// Sort
arrObj.sort(by: {$0.date.compare($1.date) == .orderedAscending})
arrObj.sorted(by: {$0.date.timeIntervalSince1970 < $1.date.timeIntervalSince1970})

// Print After
print("\n")
for arrO in arrObj {
    print("Nombre: \(arrO.nombre) - Fecha: \(arrO.fecha) - Date: \(arrO.date)")
}


//var testArray = ["25 Jun, 2016", "30 Jun, 2016", "28 Jun, 2016", "2 Jul, 2016"]
//var testArray2 = ["2018-12-19", "2018-12-17", "2018-11-01"]
//
//var convertedArray: [Date] = []
//
//var dateFormatter = DateFormatter()
////dateFormatter.dateFormat = "dd/MM/yyyy"
//dateFormatter.dateFormat = "yyyy/MM/dd"
//
//
//for dat in testArray2 {
//    let date = dateFormatter.date(from: dat)
//    convertedArray.append(date!)
//}
//
////Approach : 1
//convertedArray.sort(){$0 < $1}
//print(convertedArray)
//
//
////Approach : 2
//convertedArray.sorted(by: {$0.timeIntervalSince1970 < $1.timeIntervalSince1970})
//print(convertedArray)

