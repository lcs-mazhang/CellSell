//
//  main.swift
//  Cellphone plan
//
//  Created by GengYu Zhang on 2024-09-17.
//

import Foundation

// 1. Input

// Get number of daytime minutes
var dayTimeMinutes = 0
while true {
    
    // Prompt
    print("Number of daytime minutes?")
    
    // Collect input
    guard let givenInput = readLine() else {
        // Repeat prompt, no input given
        continue
    }
    
    // Convert to integer
    guard let givenInteger = Int(givenInput) else {
        // Repeat prompt, not an integer
        continue
    }
    
    guard givenInteger >= 0 else{
        print("It is not possible")
        continue
    }
    
    
    // Now we have an integer, break input loop
    dayTimeMinutes = givenInteger
    
    break
    
}

// Get number of evening minutes
var eveningMinutes = 0
while true {
    
    // Prompt
    print("Number of evening time minutes?")
    
    // Collect input
    guard let givenInput = readLine() else {
        // Repeat prompt, no input given
        continue
    }
    
    // Convert to integer
    guard let givenInteger = Int(givenInput) else {
        // Repeat prompt, not an integer
        continue
    }
    
    guard givenInteger >= 0 else{
        print("It is not possible")
        continue
    }
    
    // Now we have an integer, break input loop
    eveningMinutes = givenInteger
    
    break
}
// Get number of evening minutes
var weekendMinutes = 0
while true {
    
    // Prompt
    print("Number of weekend time minutes?")
    
    // Collect input
    guard let givenInput = readLine() else {
        // Repeat prompt, no input given
        continue
    }
    
    // Convert to integer
    guard let givenInteger = Int(givenInput) else {
        // Repeat prompt, not an integer
        continue
    }
    
    guard givenInteger >= 0 else{
        print("It is not possible")
        continue
    }
    
    // Now we have an integer, break input loop
    weekendMinutes = givenInteger
    
    break
    
}



// 2. Process

// Calculate costs for plan A
var x = 0
var y = 0
var z = 0


// Add  costs
x += (dayTimeMinutes - 100) * 25
y += (eveningMinutes) * 15
z += (weekendMinutes) * 20

if dayTimeMinutes < 100 {
    x = 0
}

// Calculate costs for plan B

// 3. Output
print("Plan A costs \(x+y+z)")

// Calculate costs for plan B
var l = 0
var m = 0
var n = 0
// Add  costs
l += (dayTimeMinutes - 250) * 45
m += (eveningMinutes) * 35
n += (weekendMinutes) * 25

if dayTimeMinutes < 100 {
    l = 0
}

// Calculate costs for plan B

// Checking the price
print("Plan B costs \(l+m+n)")

let planA = (x+y+z)
let planB = (l+m+n)

if planA > planB {
    print("Plan B is Cheaper")
} else if
    planA < planB {
    print("Plan A is Cheaper")
    
} else{ print("Both cost the same")
}


