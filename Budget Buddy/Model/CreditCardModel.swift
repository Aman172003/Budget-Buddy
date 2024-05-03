//
//  CreditCardModel.swift
//  Budget Buddy
//
//  Created by Aman on 03/05/24.
//

import SwiftUI

struct CreditCardModel: Identifiable {
    var id: UUID = UUID()
    var name: String = ""
    var number: String = ""
    var month_year: String = ""
}

