//
//  AddCoffeeOrderView.swift
//  Coffe Ordering App
//
//  Created by Mahbubur Rashid Leon on 21/5/22.
//

import SwiftUI

struct AddCoffeeOrderView: View {
    @Binding var isPresented: Bool
    @ObservedObject private var addCoffeeOrderVM = AddCoffeeOrderViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section(header: Text("INFORMATION").font(.body)) {
                        TextField("Enter Name", text: self.$addCoffeeOrderVM.name)
                    }
                    
                    Section(header: Text("SELECT COFFEE").font(.body)) {
                        ForEach(addCoffeeOrderVM.coffeeList, id:\.name) { (coffee) in
                            CoffeeCellView(coffee: coffee, selection: $addCoffeeOrderVM.coffeeName)
                        }
                    }
                    
                    Section(header: Text("SELECT COFFEE"), footer: OrderTotalView(total: self.addCoffeeOrderVM.total)) {
                        Picker("", selection: self.$addCoffeeOrderVM.size) {
                            Text("Small").tag("Small")
                            Text("Medium").tag("Medium")
                            Text("Large").tag("Large")
                        }.pickerStyle(.segmented)
                    }
                    
                    Button("Place Order") {
                        self.addCoffeeOrderVM.placeOrder()
                        self.isPresented = false
                    }.frame(maxWidth: .infinity)
                        .padding(EdgeInsets(top: 15, leading: 0, bottom: 15, trailing: 0))
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .navigationTitle("Add Order")
        }
    }
}

struct AddCoffeeOrderView_Previews: PreviewProvider {
    static var previews: some View {
        AddCoffeeOrderView(isPresented: .constant(false))
    }
}

struct CoffeeCellView: View {
    let coffee: CoffeeViewModel
    @Binding var selection: String
    
    var body: some View {
        HStack {
            Image(coffee.imageURL)
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(10)
                .padding()
            Text(coffee.name)
                .font(.title)
                .padding([.leading], 20)
            Spacer()
            Image(systemName: self.selection == coffee.name ? "checkmark" : "")
                .padding()
        }.onTapGesture {
            self.selection = self.coffee.name
        }
    }
}
