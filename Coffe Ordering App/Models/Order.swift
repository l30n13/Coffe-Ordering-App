//
//  Order.swift
//  Coffe Ordering App
//
//  Created by Mahbubur Rashid Leon on 20/5/22.
//

import Foundation

struct Order: Codable {
    var name: String
    var size: String
    var coffeeName: String
    var total: Double
}
