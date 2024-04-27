//
//  SubscriptionModel.swift
//  Budget Buddy
//
//  Created by Aman on 28/04/24.
//

import SwiftUI

struct SubscriptionModel: Identifiable, Equatable {
    var id: UUID = UUID()
    var name: String = ""
    var price: String = ""
    var icon: String = ""
    
    init(dict: NSDictionary) {
        self.name = dict.value(forKey: "name") as? String ?? ""
        self.price = dict.value(forKey: "price") as? String ?? ""
        self.icon = dict.value(forKey: "icon") as? String ?? ""
    }
    
    static func == (lhs: SubscriptionModel, rhs: SubscriptionModel) -> Bool {
        return lhs.id == rhs.id
    }
}


