//
//  CalculatorIMC.swift
//  BMI Calculator
//
//  Created by Ivan Romero on 19/05/2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float ) {
        let BMIVALUE = weight / (height*height)
        
        if BMIVALUE < 18.5 {
            bmi = BMI(value: BMIVALUE, advice: "Eat more pies", color: #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1))
        } else if BMIVALUE < 24.9 {
            bmi = BMI(value: BMIVALUE, advice: "Fit as a fiddle" , color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
        } else {
            bmi = BMI(value: BMIVALUE, advice: "Ear less pies", color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        }
        
    }
    
    func getAdvice() -> String {
        
        let Advicevalue = bmi?.advice ?? "No Advice"
        
        return Advicevalue
    }
    
    func getColor() -> UIColor {
        
        
        let colorValue: UIColor = bmi?.color ?? #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        return colorValue
    }
    
    
    func getBMIvalue() -> String {
        
        let BMItoDecimalPace = String(format: "%.1f", bmi?.value ?? 0.0)
        
        return BMItoDecimalPace
    }
    
}
