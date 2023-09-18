//
//  FruitStoreViewController.swift
//  JuiceMaker
//
//  Created by JaeHyeok Sim on 2023/09/15.
//

import UIKit

class FruitStoreViewController: UIViewController {
    @IBOutlet weak var strawberryLabel: UILabel!
    @IBOutlet weak var bananaLabel: UILabel!
    @IBOutlet weak var kiwiLabel: UILabel!
    @IBOutlet weak var pineappleLabel: UILabel!
    @IBOutlet weak var mangoLabel: UILabel!
    var copyJuiceMaker = JuiceMaker()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchUpStepperpressed(_ sender: UIStepper) {
        switch sender.tag {
        case 1 :
            strawberryLabel.text = Int(sender.value).description
            copyJuiceMaker.myFruitStore.add([Fruit.strawberry: Int(sender.value)])
            
            print(copyJuiceMaker.myFruitStore.fruitList)
        case 2 :
            bananaLabel.text = Int(sender.value).description
            copyJuiceMaker.myFruitStore.add([Fruit.banana: Int(sender.value)])
        case 3 :
            pineappleLabel.text = Int(sender.value).description
            copyJuiceMaker.myFruitStore.add([Fruit.pineapple: Int(sender.value)])
        case 4 :
            kiwiLabel.text = Int(sender.value).description
            copyJuiceMaker.myFruitStore.add([Fruit.kiwi: Int(sender.value)])
        case 5 :
            mangoLabel.text = Int(sender.value).description
            copyJuiceMaker.myFruitStore.add([Fruit.mango: Int(sender.value)])
        default:
            print("")
        }
        
    }
    
}

