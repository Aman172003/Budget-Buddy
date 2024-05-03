//
//  CalendarView.swift
//  Budget Buddy
//
//  Created by Aman on 29/04/24.
//

import SwiftUI

struct CalendarView: View {
    @EnvironmentObject var weekStore: WeekStore
    @State  var subArr: [SubscriptionModel] = [
        SubscriptionModel(dict: ["name" : "Spotify", "icon": "spotify_logo", "price": "5.99"]),
        SubscriptionModel(dict: ["name": "YouTube Premium", "icon": "youtube_logo",
                                 "price": "18.99"]),
        SubscriptionModel(dict: ["name": "Microsoft OneDrive", "icon": "onedrive_logo",
                                 "price": "29.99"]),
        SubscriptionModel(dict: ["name": "NetFlix", "icon": "netflix_logo", "price": "15.00"] )
    ]
    let columns = [
        GridItem(.adaptive(minimum: 200)),
        GridItem(.adaptive(minimum: 200))
    ]
    var body: some View {
        ScrollView{
            ZStack(alignment: .top){
                Rectangle()
                    .foregroundColor(.gray70.opacity(0.5))
                    .frame(width: .screenWidth)
                    .cornerRadius(25)
                
                VStack{
                    Text("Calendar")
                        .font(.customfont(.regular, fontSize: 16))
                        .foregroundColor(.gray30)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                        .padding(.horizontal, 20)
                        .padding(.bottom, 20)
                    
                    Text("Subs\nSchedule")
                        .font(.customfont(.bold, fontSize: 40))
                        .foregroundColor(.white)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 20)
                    WeekHeaderView()
                        .padding(.horizontal, 20)
                        
                    WeeksTabView() { week in
                        WeekView(week: week)
                    }
                    .frame(height: 110, alignment: .top)
                    .padding(.vertical, 20)
                }
                .padding(.top, .topInsets)
                .padding(.bottom, 20)
            }
            
            
            
            VStack{
                HStack{
                    Text("July")
                        .font(.customfont(.bold, fontSize: 20))
                        .foregroundColor(.white)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    
                    Text("₹50.98" )
                        .font(.customfont(.bold, fontSize: 14))
                        .foregroundColor(.white)
                        
                }
                
                HStack{
                    Text("01-05-2024")
                        .font(.customfont(.medium, fontSize: 12))
                        .foregroundColor(.gray30)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    
                    Text("in upcoming bills")
                        .font(.customfont(.bold, fontSize: 12))
                        .foregroundColor(.gray30)
                        
                }
            }
            .padding(20)
            
            
            LazyVGrid(columns: columns, spacing: 8) {
                ForEach(subArr) { sObj in
                    SubscriptionCell(sObj: sObj)
                }
                
            }
            .padding(.horizontal, 20)
            .padding(.bottom, 120)
        }
        .background(Color.grayC)
        .ignoresSafeArea()
    }
}

#Preview {
    CalendarView()
        .environmentObject(WeekStore())
}
