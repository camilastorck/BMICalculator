//
//  MainViewController.swift
//  BMICalculator
//
//  Created by Apple  on 01/05/2022.
//

import UIKit

class MainViewController: UIViewController {
    
    // MARK: - Variables
    
    var bmiResult = ""

    // MARK: - Outlets
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    // MARK: - Actions
    
    @IBAction func heightSliderChange(_ sender: UISlider) {
        
        let formattedValue = String(format: "%.2f", sender.value)
        let finalText = "\(formattedValue)m"
        heightLabel.text = finalText
    }
    
    @IBAction func weightSliderChange(_ sender: UISlider) {
        
        let formattedValue = String(format: "%.1f", sender.value)
        let finalText = "\(formattedValue)Kg"
        weightLabel.text = finalText

    }
    
    @IBAction func calculateBMI(_ sender: UIButton) {
        let result = calculations(height: heightSlider.value, weight: weightSlider.value)
        let formattedResult = String(format: "%.1f", result)
        bmiResult = formattedResult
        
        performSegue(withIdentifier: "showResults", sender: self)
    }
    
    func calculations(height: Float, weight: Float) -> Float {
        
        let heightCalculations = pow(height, 2)
        let finalCalculations = weight / heightCalculations
        return finalCalculations
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showResults" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmi = bmiResult
        }
    }
}

