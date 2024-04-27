//
//  SegmentButton.swift
//  Budget Buddy
//
//  Created by Aman on 28/04/24.
//

import SwiftUI

struct SegmentButton: View {
    @State var title: String = "Title"
    var isActive: Bool = false
    var onPressed: (()->())?
    var body: some View {
        Button {
            onPressed?()
        }label: {
            Text(title)
                .font(.customfont(.semibold, fontSize: 12))
        }
        .foregroundColor(  isActive ? .white : .gray30)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 42, maxHeight: 42)
        .background(Color.gray60.opacity( isActive ? 0.2 : 0.0))
        .overlay {
            RoundedRectangle(cornerRadius:  15)
                .stroke(  isActive ? Color.gray70 : .clear, lineWidth: 1)
        }
        .cornerRadius(12)
    }
}

#Preview {
    SegmentButton()
}
