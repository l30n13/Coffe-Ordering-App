//
//  OrderListView.swift
//  Coffe Ordering App
//
//  Created by Mahbubur Rashid Leon on 20/5/22.
//

import SwiftUI

struct OrderListView: View {
    var orders: [OrderViewModel]
    
    init(orders: [OrderViewModel]) {
        self.orders = orders
    }
    
    var body: some View {
        List {
            ForEach(orders, id: \.id) { order in
                HStack {
                    Image(order.coffeeName)
                        .resizable()
                        .frame(width: 100, height: 100)
                        .cornerRadius(20)
                    
                    VStack{
                        Text(order.name)
                            .font(.title)
                            .padding()
                        
                        HStack {
                            Text(order.coffeeName)
                                .padding(10)
                                .background(Color.gray)
                                .cornerRadius(10)
                            
                            Text(order.size)
                                .padding(10)
                                .background(Color.blue)
                                .foregroundColor(Color.white)
                                .cornerRadius(10)
                        }
                    }
                }
            }
        }
        
        
        
    }
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView(orders: [OrderViewModel(order: Order(name: "Testing", size: "Medium", coffeeName: "ic_coffee_1", total: 30.0))])
    }
}
