//
//  Coffee.swift
//  Coffe Ordering App
//
//  Created by Mahbubur Rashid Leon on 20/5/22.
//

import Foundation

struct Coffee {
    let name: String
    let imageULR: String
    let price: Double
}

extension Coffee {
    static func all() -> [Coffee] {
        return [
            Coffee(name: "A", imageULR: "ic_coffee_1", price: 20.0),
            Coffee(name: "B", imageULR: "ic_coffee_2", price: 30.0),
            Coffee(name: "C", imageULR: "ic_coffee_3", price: 40.0)
        ]
    }
}
