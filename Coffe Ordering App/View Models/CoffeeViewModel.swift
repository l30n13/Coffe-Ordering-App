//
//  CoffeeViewModel.swift
//  Coffe Ordering App
//
//  Created by Mahbubur Rashid Leon on 21/5/22.
//

import Foundation

class CoffeeListViewModel {
    var coffeeList: [CoffeeViewModel] = [CoffeeViewModel]()
}

struct CoffeeViewModel {
    var coffee: Coffee
    
    init(coffee: Coffee) {
        self.coffee = coffee
    }
    
    var name: String {
        return coffee.name
    }
    
    var imageURL: String {
        return coffee.imageULR
    }
    
    var price: Double {
        return coffee.price
    }
}
