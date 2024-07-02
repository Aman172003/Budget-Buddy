//
//  SignInView.swift
//  Budget Buddy
//
//  Created by Aman on 26/04/24.
//

import SwiftUI
import Firebase

struct SignInView: View {
    @State var txtLogin: String = ""
    @State var txtPassword: String = ""
    @State var isRemember: Bool = false
    @State var showSignUp: Bool = false
    @State var showMainTab: Bool = false
    @State var errorMessage: String?
    
    var body: some View {
        ZStack{
                        
            VStack{
                
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: .widthPer(per: 0.5) )
                    
                Spacer()
                
                RoundTextField(title: "Login", text: $txtLogin, keyboardType: .emailAddress)
                
                .padding(.horizontal, 20)
                .padding(.bottom, 15)
                
                
                
                RoundTextField(title: "Passowrd", text: $txtPassword, isPassword: true)
                
                .padding(.horizontal, 20)
                .padding(.bottom, 20)
                
                
                
                HStack{
                    Button {
                        isRemember = !isRemember
                    } label: {
                        
                        HStack{
                            
                            Image(systemName: isRemember ? "checkmark.square" : "square")
                                .resizable()
                                .frame(width: 20, height: 20)
                            
                            Text("Forgot Password")
                                .multilineTextAlignment(.center)
                                .font(.customfont(.regular, fontSize: 14))
                        }
                        
                        
                            
                    }
                    .foregroundColor(.gray50)
                    
                    Spacer()
                    Button {
                        
                    } label: {
                        Text("Forgot Password")
                            .multilineTextAlignment(.center)
                            .font(.customfont(.regular, fontSize: 14))
                            
                    }
                    .foregroundColor(.gray50)

                }
                .padding(.horizontal, 20)
                .padding(.bottom, 15)
                
                if let errorMessage = errorMessage {
                                    Text(errorMessage)
                                        .foregroundColor(.red)
                                        .padding(.bottom, 20)
                    }
                
                PrimaryButton(title: "Sign In", onPressed: {
                    signIn()
                })
                
                Spacer()
                
                Text("if you don't have an account yet?")
                    .multilineTextAlignment(.center)
                    .font(.customfont(.regular, fontSize: 14))
                    .padding(.horizontal, 20)
                    .foregroundColor(.white)
                    .padding(.bottom, 20)
                
                SecondaryButton(title: "Sign Up", onPressed: {
                    showSignUp.toggle()
                })
                .background( NavigationLink(destination: SignUpView(), isActive: $showSignUp, label: {
                    EmptyView()
                }) )
                .padding(.bottom, .bottomInsets + 8)
            }
        }
        .navigationTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .ignoresSafeArea()
        .background(Color.grayC)
        .background(
                    NavigationLink(
                        destination: MainTabView(),
                        isActive: $showMainTab,
                        label: {
                            EmptyView()
                        }
                    )
                )
    }
    func signIn() {
            Auth.auth().signIn(withEmail: txtLogin, password: txtPassword) { authResult, error in
                if let error = error {
                    self.errorMessage = error.localizedDescription
                } else {
                    // User is signed in successfully, navigate to MainTabView
                    showMainTab.toggle()
                }
            }
        }
}

#Preview {
    SignInView()
}
