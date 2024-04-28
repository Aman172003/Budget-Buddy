//
//  UpcomingBillRow.swift
//  Budget Buddy
//
//  Created by Aman on 28/04/24.
//

import SwiftUI

struct UpcomingBillRow: View {
    @State var sObj: SubscriptionModel =  SubscriptionModel(dict: ["name" : "Spotify", "icon": "spotify_logo", "price": "5.99"])
    var body: some View {
        HStack{
            ZStack{
                VStack{
                    
                    Text("JUN")
                        .font(.customfont(.medium, fontSize: 10))
                        .foregroundColor(.white)
                    
                    Text("25")
                        .font(.customfont(.semibold, fontSize: 14))
                        .foregroundColor(.white)

                }
            }
            .frame(width: 40, height: 40)
            .background(Color.gray60.opacity(0.2))
            .overlay {
                RoundedRectangle(cornerRadius:  15)
                    .stroke(Color.gray70, lineWidth: 1)
            }
            .cornerRadius(12)
            
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
    UpcomingBillRow()
}
