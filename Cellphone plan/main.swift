//
//  main.swift
//  Cellphone plan
//
//  Created by GengYu Zhang on 2024-09-17.
//

import Foundation

func getInput(withPrompt prompt: String, minimum: Int?, maximum: Int?) -> Int {
    
    // Loop until a valid value is provided
    while true {
        
        // Prompt the user
        print(prompt)
        
        // Collect the input
        guard let givenInput = readLine() else {
            continue
        }
        
        // Convert to an integer
        guard let givenInteger = Int(givenInput) else {
            continue
        }
        
        // If a lowest value for the integer was specified...
        if let minimumValue = minimum {
            
            // ... then check that the given integer is greater than or equal to the lowest desired value.
            guard givenInteger >= minimumValue else {
                continue
            }
            
        }
        
        // If an highest possible value for the integer was specified...
        if let maximumValue = maximum {
            
            // ... then check that the given integer is less than or equal to the highest desired value.
            guard givenInteger <= maximumValue else {
                continue
            }
            
            
        }
        
        // If we've made it past all the checks, the input is an integer in the desired range of values, so, return it
        return givenInteger
        
    }
    
}

// 1. Input

// Get number of daytime minutes
let dayTimeMinutes = getInput(withPrompt: "Number of daytime minutes", minimum: 0, maximum: nil)

// Get number of evening minutes
let eveningMinutes = getInput(withPrompt: "Number of evening minutes", minimum: 0, maximum: nil)

// Get number of evening minutes
let weekendMinutes =  getInput(withPrompt: "Number of weekend minutes", minimum: 0, maximum: nil)

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

if dayTimeMinutes < 250 {
    l = 0
}

print("Plan B costs \(l+m+n)")

// Checking the price

let planA = (x+y+z)
let planB = (l+m+n)

if planA > planB {
    print("Plan B is Cheaper")
} else if
    planA < planB {
    print("Plan A is Cheaper")
    
} else{ print("Both cost the same")
}


