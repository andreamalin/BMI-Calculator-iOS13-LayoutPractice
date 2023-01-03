//
//  ResultsViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Andrea Amaya on 8/12/22.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    @IBOutlet weak var bmiText: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmiValue: String?
    var color: UIColor = UIColor.white
    var advice: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        bmiText.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
