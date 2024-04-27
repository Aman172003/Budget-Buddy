//
//  HomeView.swift
//  Budget Buddy
//
//  Created by Aman on 27/04/24.
//

import SwiftUI

struct HomeView: View {
    @State var isSubscription: Bool = true
    @State  var subArr: [SubscriptionModel] = [
        SubscriptionModel(dict: ["name" : "Spotify", "icon": "spotify_logo", "price": "5.99"]),
        SubscriptionModel(dict: ["name": "YouTube Premium", "icon": "youtube_logo",
            "price": "18.99"]),
        SubscriptionModel(dict: ["name": "Microsoft OneDrive", "icon": "onedrive_logo",
            "price": "29.99"]),
        SubscriptionModel(dict: ["name": "NetFlix", "icon": "netflix_logo", "price": "15.00"] )
    ]
    var body: some View {
        ScrollView{
            ZStack{
                Rectangle()
                    .foregroundColor(.gray70.opacity(0.5))
                    .frame(width: .screenWidth, height: .widthPer(per: 1.1))
                    .cornerRadius(25)
            }
            HStack{
                SegmentButton(title: "Your Subscription", isActive: isSubscription) {
                    isSubscription.toggle()
                }
                
                SegmentButton(title: "Upcoming Bills", isActive: !isSubscription) {
                    isSubscription.toggle()
                }

            }
            .padding(8)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 50, maxHeight: 50)
            .background(Color.black)
            .cornerRadius(15)
            .padding()
            
            if(isSubscription) {
                LazyVStack(spacing: 15){
                    ForEach(subArr, id: \.id) { sObj in
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
                .padding(.horizontal, 20)
            }
            
            if(!isSubscription) {
                LazyVStack(spacing: 15){
                    ForEach(subArr, id: \.id) { sObj in
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
                .padding(.horizontal, 20)
            }
            
        }
        .background(Color.grayC)
        .ignoresSafeArea()
    }
}

#Preview {
    HomeView()
}
