//
//  Menu.swift
//  JuiceMaker
//
//  Created by Janine on 2023/09/12.
//

import Foundation

enum Menu: String, CaseIterable {
    case strawberryJuice
    case bananaJuice
    case kiwiJuice
    case pineappleJuice
    case strawberryBananaJuice
    case mangoJuice
    case mangoKiwiJuice
    
    var juice: String {
         switch self {
         case .strawberryJuice:
             return "딸기쥬스"
         case .bananaJuice:
             return "바나나쥬스"
         case .kiwiJuice:
             return "키위쥬스"
         case .pineappleJuice:
             return "파인애플쥬스"
         case .strawberryBananaJuice:
             return "딸바쥬스"
         case .mangoJuice:
             return "망고쥬스"
         case .mangoKiwiJuice:
             return "망키쥬스"
         }
     }
    
    var recipe: [Fruit: Int] {
        switch self {
        case .strawberryJuice:
            return [.strawberry: 16]
        case .bananaJuice:
            return [.banana: 2]
        case .kiwiJuice:
            return [.kiwi: 3]
        case .pineappleJuice:
            return [.pineapple: 2]
        case .strawberryBananaJuice:
            return [.strawberry: 10, .banana: 1]
        case .mangoJuice:
            return [.mango: 3]
        case .mangoKiwiJuice:
            return [.mango: 2, .kiwi: 1]
        }
    }
}
