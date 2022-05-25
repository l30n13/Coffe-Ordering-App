//
//  OrderTotalView.swift
//  Coffe Ordering App
//
//  Created by Mahbubur Rashid Leon on 24/5/22.
//

import SwiftUI

struct OrderTotalView: View {
    let total: Double
    
    var body: some View {
        HStack(alignment: .center) {
            Spacer()
            Text(String(format: "$%.2f", total))
                .padding()
                .font(.title)
                .foregroundColor(.green)
            Spacer()
        }
    }
}

struct OrderTotalView_Previews: PreviewProvider {
    static var previews: some View {
        OrderTotalView(total: 45.56)
    }
}
