//
//  BMIBrain.swift
//  BMICalculator
//
//  Created by Apple  on 04/05/2022.
//

import Foundation

struct BMIBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
            let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
            return bmiTo1DecimalPlace
    }
    
    mutating func calculations(height: Float, weight: Float) {
        
        let calculations = weight / (height * height)
        
        if calculations < 18.5 {
            bmi = BMI(value: calculations, advice: "Tu IMC es muy bajo!")
        } else if calculations < 24.99 {
            bmi = BMI(value: calculations, advice: "Tu IMC es normal!")
        } else if calculations < 30 {
            bmi = BMI(value: calculations, advice: "Tu IMC es alto, estás en la categoría sobrepeso.")
        } else {
            bmi = BMI(value: calculations, advice: "Tu IMC es muy alto, estás en la categoría obesidad.")
        }
        
    }
}

struct BMI {
    
    var value: Float
    var advice: String
    
}



