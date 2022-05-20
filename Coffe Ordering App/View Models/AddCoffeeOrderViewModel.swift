//
//  AddCoffeeOrderViewModel.swift
//  Coffe Ordering App
//
//  Created by Mahbubur Rashid Leon on 21/5/22.
//

import Foundation

class AddCoffeeOrderViewModel: ObservableObject {
    var name: String = ""
    @Published var size: String = "Medium"
    @Published var coffeeName: String = ""
    
    private var webService: WebService
    
    var coffeeList: [CoffeeViewModel] {
        return Coffee.all().map(CoffeeViewModel.init)
    }
    
    init() {
        webService = WebService()
    }
    
    var total: Double {
        return calculateTotalPrice()
    }
    
    private func priceForSize() -> Double {
        let price = ["Small" : 2.0, "Medium" : 3.0, "Large" : 4.0]
        return price[self.size]!
    }
    
    private func calculateTotalPrice() -> Double {
        let coffeeVM = self.coffeeList.first { $0.name == self.coffeeName }
        if let coffeeVM = coffeeVM {
            return coffeeVM.price * priceForSize()
        } else {
            return 0.0
        }
    }
    
    func placeOrder() {
        let order = Order(name: self.name, size: self.size, coffeeName: self.coffeeName, total: self.total)
        self.webService.createCoffeeOrder(order: order) { _ in
            
        }
    }
}
