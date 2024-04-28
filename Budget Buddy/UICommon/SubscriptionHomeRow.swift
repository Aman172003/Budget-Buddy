//
//  SubscriptionHomeRow.swift
//  Budget Buddy
//
//  Created by Aman on 28/04/24.
//

import SwiftUI

struct SubscriptionHomeRow: View {
    @State var sObj: SubscriptionModel =  SubscriptionModel(dict: ["name" : "Spotify", "icon": "spotify_logo", "price": "5.99"])
    var body: some View {
        HStack{
            Image(sObj.icon)
                .resizable()
                .frame(width: 40, height: 40)
            Text(sObj.name)
                .font(.customfont(.semibold, fontSize: 14))
                .foregroundColor(.white)
            Spacer()
            Text("₹\(sObj.price)" )
                .font(.customfont(.semibold, fontSize: 14))
                .foregroundColor(.white)
        }
        .padding(15)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60)
        .background(Color.gray60.opacity(0.2))
        .overlay {
            RoundedRectangle(cornerRadius:  15)
                .stroke(Color.gray70, lineWidth: 1)
        }
        .cornerRadius(12)
    }
}

#Preview {
    SubscriptionHomeRow()
}
