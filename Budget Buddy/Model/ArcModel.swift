//
//  ArcModel.swift
//  Budget Buddy
//
//  Created by Aman on 29/04/24.
//

import SwiftUI

struct ArcModel: Identifiable, Equatable {
    var id: UUID = UUID()
    var value: Double = 20
    var color: Color = .secondaryC
    var statVal: Double = 0
    
    static func == (lhs: ArcModel, rhs: ArcModel) -> Bool {
        return lhs.id == rhs.id
    }
}
