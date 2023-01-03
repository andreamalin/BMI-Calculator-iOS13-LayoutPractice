//
//  CalculatorBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Andrea Amaya on 2/01/23.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(weight: Float, height: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "eat more pies!", color: UIColor(red: 82/255, green: 204/255, blue: 213/255, alpha: 1))
        } else if bmiValue > 24.9 {
            bmi = BMI(value: bmiValue, advice: "eat less pies!", color: UIColor.red)
        } else {
            bmi = BMI(value: bmiValue, advice: "fit as a fiddle!", color: UIColor(red: 119/255, green: 195/255, blue: 68/255, alpha: 1))
        }
    }
    
    func getBMI() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}
