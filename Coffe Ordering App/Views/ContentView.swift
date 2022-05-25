//
//  ContentView.swift
//  Coffe Ordering App
//
//  Created by Mahbubur Rashid Leon on 20/5/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var orderListVM = OrderListViewModel()
    @State private var showModel: Bool = false
    
    var body: some View {
        NavigationView {
            OrderListView(orders: orderListVM.orders)
            
                .navigationTitle("Coffee Orders")
                .tabItem{Text("Hello")}
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: showAddCoffeeOrderView) {
                            Image(systemName: "plus")
                        }.foregroundColor(.white)
                    }
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: reloadOrders) {
                            Image(systemName: "arrow.clockwise")
                        }.foregroundColor(.white)
                    }
                }
                .sheet(isPresented: $showModel) {
                    AddCoffeeOrderView(isPresented: self.$showModel)
                }
        }
    }
    
    private func reloadOrders() {
        self.orderListVM.fetchOrders()
    }
    private func showAddCoffeeOrderView() {
        self.showModel = true
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
