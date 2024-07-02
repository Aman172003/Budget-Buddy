import SwiftUI

struct WelcomeView: View {
    @State var showSignIn: Bool = false
    @State var showSignUp: Bool = false
    var body: some View {
        ZStack{
            Image("Designer_wc")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenHeight)
            VStack{
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: .widthPer(per: 0.5))
                
                Spacer()
                PrimaryButton(title: "Sign up", onPressed: {
                    showSignUp.toggle()
                })
                .background(NavigationLink(
                    destination: SocialSignupView(),
                    isActive: $showSignUp,
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
