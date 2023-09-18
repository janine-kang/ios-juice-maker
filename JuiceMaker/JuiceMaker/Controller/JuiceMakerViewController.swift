//
//  JuiceMaker - ViewController.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
// 

import UIKit

class JuiceMakerViewController: UIViewController {
    
    @IBOutlet weak var strawberry: UILabel!
    @IBOutlet weak var banana: UILabel!
    @IBOutlet weak var kiwi: UILabel!
    @IBOutlet weak var pineapple: UILabel!
    @IBOutlet weak var mango: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        UpdateStock()
        
    }
    let  juiceMaker: JuiceMaker = JuiceMaker()
    
    func UpdateStock() {
        let fruitsUILabels = [strawberry: Fruit.strawberry , banana: Fruit.banana , kiwi: Fruit.kiwi  ,pineapple: Fruit.pineapple, mango: Fruit.mango]
        for (remainFruit, fruit) in fruitsUILabels {
            remainFruit?.text = String(juiceMaker.myFruitStore.fruitList[fruit]!)
            
            }
        }
    
    func showAlert(message: String) {
        
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
    func showSoldOutAlert(message: String) {
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "예", style: .default)  { action in
            self.goToViewController() }
        let noAction = UIAlertAction(title: "아니오", style: .cancel)
        alert.addAction(okAction)
        alert.addAction(noAction)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func touchUpButton(_ sender: UIButton) {
        let titleLable = sender.titleLabel?.text
        guard let unwrapTitleLabel = titleLable else {
            return
        }
        let splitTitleLable = unwrapTitleLabel.split(separator: " ")
        let fruitJuice = String(splitTitleLable[0])
        guard let orderfruitJuice = Menu(rawValue: fruitJuice) else{
            return
        }
        let orderedJuice = juiceMaker.order(orderfruitJuice)
        if orderedJuice == false {
            showAlert(message: "\(fruitJuice) 나왔습니다! 맛있게 드세요!")
        } else {
            showSoldOutAlert(message: "재료가 모자라요. 재고를 수정할까요?")
        }
        
        UpdateStock()
    }

    @IBAction func goToViewController() {
        let pushVC = self.storyboard?.instantiateViewController(withIdentifier: "FruitStoreViewControllerID") as? FruitStoreViewController
        pushVC?.copyJuiceMaker = juiceMaker
        self.navigationController?.pushViewController(pushVC!, animated: true)
        }
    
}


