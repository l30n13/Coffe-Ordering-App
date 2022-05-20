//
//  ContentView.swift
//  Coffe Ordering App
//
//  Created by Mahbubur Rashid Leon on 20/5/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var orderListVM = OrderListViewModel()
    
    var body: some View {
        NavigationView {
            OrderListView(orders: orderListVM.orders)
            
                .navigationTitle("Coffee Orders")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
