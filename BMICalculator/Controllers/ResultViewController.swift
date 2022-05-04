//
//  ResultViewController.swift
//  BMICalculator
//
//  Created by Apple  on 01/05/2022.
//

import UIKit

class ResultViewController: UIViewController {

    // MARK: - Outlets
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    // MARK: - Variables
    
    var bmi: String?
    var advice: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        resultLabel.text = bmi
        adviceLabel.text = advice
    }
    
    // MARK: - Actions
    
    @IBAction func recalculateButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
