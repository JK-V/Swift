//: Playground - noun: a place where people can play

import UIKit


//: This playground helps to understand Closure

//: ---- Summary -------

//: Group code together into a self contained reusable unit. (An't we do this with functions)
//: Functions are specialized type of closure.
//: Closure doesn't need a name makes it simpler than function (Other languages called it anonymous function/Lambdas/Blocks)
//: You can make functions that accepts block of code.
//: Closure can have parameters and can return values.
//: Closure begins after the opening baces there is nothing before or after it.
//: Used in apple framwork for networking, animation where you want to provide some extra logic.


//: 1. Example Closure without parameters

//Declared closure
var myClosure = {
    println("This is simple function")
}

//Function that accepts the closure
func performeFiveTimesPrint(myClosure : ()->())
{
    for i in 1...5
    {
        myClosureDisplay();
    }
}

func myClosureDisplay()
{
    println("I'm inside my closure.")
}

performeFiveTimesPrint(myClosure) // Method to pass declared closure


//: Short Hand closure passing

performeFiveTimesPrint({
    println("This is simple function")
})


//: 2. Example Closure with parameters


let unsortedArray = [12, 34, 6, 67, 2, 89]

var compareClosure = { (firstNo : Int, secondNo : Int);-> (Bool)
    
    return firstNo < secondNo
}


//Paasing closure as argument
let soretdArray = sorted(unsortedArray,  {(firstNo : Int, secondNo : Int)-> Bool in
    
return firstNo < secondNo
})


println(soretdArray)


