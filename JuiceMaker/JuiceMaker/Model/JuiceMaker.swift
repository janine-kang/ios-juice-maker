//
//  JuiceMaker - JuiceMaker.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
// 

import Foundation

struct JuiceMaker {
    private let myFruitStore = FruitStore()
    
//    let myFruitStore: FruitStore = FruitStore.shared
    func order(_ choice: Menu) {
        do {
            let checkedMenu = try checkAvailable(choice)
            makeJuice(checkedMenu)
        } catch OrderError.soldOut {
            print(OrderError.soldOut.rawValue)
        } catch {
            print(OrderError.unexpected.rawValue)
        }
    }
    
    func getRecipe(_ menu: Menu) -> [Fruit: Int] {
        return menu.recipe
    }
    
    func getAllStocks() -> [Fruit:Int] {
        let fruits = Fruit.allCases.map { $0 }
        return myFruitStore.getRemains(fruits)
    }
    
    func getFruitStock(for fruit: Fruit) -> Int {
        return myFruitStore.getRemains([fruit])[fruit] ?? 10
    }
    
    func checkAvailable(_ choice: Menu) throws -> Menu {
        let recipe = getRecipe(choice)
        let keys = Array(recipe.keys) as [Fruit]
        let remains = myFruitStore.getRemains(keys)
        
        for (fruit, number) in recipe {
            guard let fruitStock = remains[fruit], fruitStock >= number else {
                throw OrderError.soldOut
            }
            continue
        }
        return choice
    }
    
    func makeJuice(_ menu: Menu) {
        myFruitStore.deduct(menu.recipe)
        print("\(menu.rawValue) 완성")
    }
    
    
    func increment(_ fruit: Fruit, by amount: Int) {
        myFruitStore.add([fruit: amount])
    }
    func decrement(_ fruit: Fruit, by amount: Int) {
        myFruitStore.deduct([fruit: amount])
    }
}
