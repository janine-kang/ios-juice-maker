//
//  SecondViewController.swift
//  JuiceMaker
//
//  Created by Janine on 2023/09/15.
//

import UIKit

class DashboardViewController: UIViewController {
//    var juiceMakerModel = JuiceMaker()
    var juiceMakerModel:JuiceMaker?
    var testFruitStock: [Fruit: Int]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        testFruitStock =  juiceMakerModel?.getAllStocks()
    }
    
    @IBAction func didTapStepper(_ sender:UIStepper) {
        guard let tester = testFruitStock?[.banana]  else {
            return
        }
        guard let curr =  juiceMakerModel?.getFruitStock(for: .banana) else {
            return
        }
        sender.minimumValue = Double(0 - tester)
        let distance = tester + Int(sender.value) - curr
        print(distance, "<<distance", sender.value)
        print(tester, "🍌", curr)
        if distance == 0 {
            return
        }
        else if distance > 0 {
            juiceMakerModel?.increment(.banana, by: 1)
        } else {
            juiceMakerModel?.decrement(.banana, by: 1)
        }
        print("test", testFruitStock?[.banana])
        print(juiceMakerModel?.getAllStocks()[.banana])
    }
}
