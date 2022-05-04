//
//  ResultViewController.swift
//  BMICalculator
//
//  Created by Apple  on 01/05/2022.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    var bmi: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultLabel.text = bmi
    }
    

    @IBAction func recalculateButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
