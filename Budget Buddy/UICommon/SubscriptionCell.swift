//
//  SubscriptionCell.swift
//  Budget Buddy
//
//  Created by Aman on 29/04/24.
//

import SwiftUI

struct SubscriptionCell: View {
    @State var sObj: SubscriptionModel =  SubscriptionModel(dict: ["name" : "Spotify", "icon": "spotify_logo", "price": "5.99"])
    var body: some View {
        VStack(alignment: .leading, spacing: 4){
            Image(sObj.icon)
                .resizable()
                .frame(width: 45, height: 45)
            
            Spacer()
            Text(sObj.name)
                .font(.customfont(.semibold, fontSize: 14))
                .foregroundColor(.white)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            
            Text("₹\(sObj.price)" )
                .font(.customfont(.bold, fontSize: 14))
                .foregroundColor(.white)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
        }
        .padding(15)
        .frame(minWidth: 0, maxWidth: .infinity)
        .aspectRatio(1, contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
        .background(Color.gray60.opacity(0.2))
        .overlay {
            RoundedRectangle(cornerRadius:  15)
                .stroke(Color.gray70, lineWidth: 1)
        }
        .cornerRadius(12)
    }
}

#Preview {
    SubscriptionCell()
}
