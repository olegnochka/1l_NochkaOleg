// please check it
//  main.swift
//  1l_NochkaOleg
//
//  Created by Oleg Nochka on 3/4/21.
//
import Foundation

//1. quadratic equation
print("Task 1")
let (a, b, c) = (1.0, 6.0, 5.0)

let D = pow(b, 2) - 4 * (a * c)

if a == 0 {
    print("Not a quadratic equation")
} else if D > 0 {
    let negativeB = -b
    let x1 = (negativeB + D.squareRoot()) / (2 * a)
    let x2 = (negativeB - D.squareRoot()) / (2 * a)
    print("We have two roots \(x1) and \(x2)")
} else if D == 0 {
    let negativeB = -b
    let x = negativeB / 2 * a
    print ("We have one root \(x)")
} else {
    print("We have no roots")
}
print("\n")
//2. triangle
print("Task 2")
let (leg1, leg2) = (7.0, 20.0)

let square = leg1 * leg2 / 2
print("Triangle square is \(square)")
let hypotenuse = (pow(leg1, 2) + pow(leg2, 2)).squareRoot()
let roundedHypotenuse = Double(round(100*hypotenuse)/100)
print("Hypotenuse is ~\(roundedHypotenuse)")
let perimetr = leg1 + leg2 + roundedHypotenuse
print("Perimeter is ~\(perimetr)")
print("\n")

//3.
print("Task 3")
var depositSum = Double(100)
let interestRate = Double(5)
let decimalRate = interestRate / 100 + 1

for years in 2022...2027 {
    depositSum = depositSum * decimalRate
    let roundedDepositSum = Double(round(100 * depositSum)/100)
    print("Deposit sum in \(years) is \(roundedDepositSum)")
}
