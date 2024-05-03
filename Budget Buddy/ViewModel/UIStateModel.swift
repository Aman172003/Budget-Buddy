//
//  UIStateModel.swift
//  Budget Buddy
//
//  Created by Aman on 30/04/24.
//

import SwiftUI

public class UIStateModel: ObservableObject
{
    @Published var activeCard: Int      = 0
    @Published var screenDrag: Float    = 0.0
}
