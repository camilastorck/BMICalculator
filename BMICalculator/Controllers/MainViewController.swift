//
//  MainViewController.swift
//  BMICalculator
//
//  Created by Apple  on 01/05/2022.
//

import UIKit

class MainViewController: UIViewController {
    
    // MARK: - Variables
    var calculatorBrain = BMIBrain()

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
        
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
    }
    
    @IBAction func weightSliderChange(_ sender: UISlider) {
        
        let weight = String(format: "%.1f", sender.value)
        weightLabel.text = "\(weight)Kg"

    }
    
    @IBAction func calculateBMI(_ sender: UIButton) {
        
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.calculations(height: height, weight: weight)
        performSegue(withIdentifier: "showResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showResults" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmi = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.bmi?.advice
        }
    }
}

