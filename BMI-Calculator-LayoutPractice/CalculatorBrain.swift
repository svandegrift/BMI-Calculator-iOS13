//
//  CalculatorBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Steven Vandegrift on 6/17/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
        
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / pow(height,2)
        if(bmiValue < 18.5){
            bmi = BMI(value: bmiValue, advice: "Eat more food!", color: .systemTeal)
        }else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "You're super healthy!", color: .systemGreen)
        }else{
            bmi = BMI(value: bmiValue, advice: "Maybe cut back on the midnight snacks...", color: .systemRed)
        }
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? "0.0")
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? ""
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .white
    }
}
