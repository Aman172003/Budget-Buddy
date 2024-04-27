//
//  WelcomeView.swift
//  Budget Buddy
//
//  Created by Aman on 26/04/24.
//

import SwiftUI

struct WelcomeView: View {
    @State var showSignIn: Bool = false
    @State var showSignUo: Bool = false
    var body: some View {
        ZStack{
            Image("welcome_screen")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenHeight)
            VStack{
                Image("app_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: .widthPer(per: 0.5))
                    .padding(.top, .topInsets+8)
                Spacer()
                Text("jedksfjjehbkdxgehbkjdsgfdxkjbcxjk jkbeudfksdjbhkwefd.")
                    .multilineTextAlignment(.center)
                    .font(.customfont(.regular, fontSize: 14))
                    .padding(.horizontal, 30)
                    .foregroundColor(.white)
                    .padding(.bottom, 30)
                PrimaryButton(title: "Sign up", onPressed: {
                    showSignUo.toggle()
                })
                .background(NavigationLink(
                    destination: SocialSignupView(),
                    isActive: $showSignUo,
                    label: {
                        EmptyView()
                    }))
                .padding(.bottom, 15)
                
                SecondaryButton(title: "I have an account", onPressed: {
                    showSignIn.toggle()
                })
                
                .background(NavigationLink(
                    destination: SignInView(),
                    isActive: $showSignIn,
                    label: {
                        EmptyView()
                    }))
                .padding(.bottom, .bottomInsets)
            }
            
        }
        .navigationTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .ignoresSafeArea()
    }
}

#Preview {
    WelcomeView()
}
