//
//  Sieve.swift
//  SieveOfEratosthenes
//
//  Created by Kenneth Charles on 2/12/16.
//  Copyright © 2016 Kenneth Charles. All rights reserved.
//

import Foundation
// n will be the max number we want to calculate primes up to
func Sieve(var n: Int) -> String{
   var result = ""
    //assume all numbers are prime at first (numbers[i] = true)
    var numbers = [Bool](count: n + 1, repeatedValue: true)
    
    numbers[0] = false
    numbers[1] = false
    
    for var i = 2; i < numbers.count; ++i{
        if numbers[i]{
            for var j = i*i; j < numbers.count; j += i{
                numbers[j] = false
            }
        }
    } //for var i
    for var printer = 0; printer < numbers.count; ++printer{
        if numbers[printer]{
            //print(String(printer) + " ")
            result = result + " " + String(printer)
        }
    } //for var printer
    
    return result
    
} //func Sieve
