//
//  JuiceMaker - JuiceMaker.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
// 

import Foundation

struct JuiceMaker {
    private let myFruitStore: FruitStore = FruitStore()
    
    func order(_ choice: Menu) -> Menu? {
        do {
            let checkedMenu = try checkAvailable(choice)
            return checkedMenu
        } catch OrderError.soldOut {
            print(OrderError.soldOut.rawValue)
        } catch {
            print(OrderError.unexpected.rawValue)
        }
        return nil
    }
    
    func getFruitStock(for fruit: Fruit) -> Int {
        return myFruitStore.getRemains([fruit])[fruit] ?? 10
    }
    
    func getAllStocks() -> [Fruit:Int] {
        let fruits = Fruit.allCases.map { $0 }
        return myFruitStore.getRemains(fruits)
    }
    
    func updateFruitStock(fruit: Fruit, amount: Double) {
        myFruitStore.update([fruit: Int(amount)])
    }
    
    func makeJuice(_ menu: Menu) {
        myFruitStore.deduct(menu.recipe)
    }
    
    private func getRecipe(_ menu: Menu) -> [Fruit: Int] {
        return menu.recipe
    }
    
    private func checkAvailable(_ choice: Menu) throws -> Menu {
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
}

