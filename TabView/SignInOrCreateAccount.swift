//
//  SignInOrCreateAccount.swift
//  TabView
//
//  Created by Mustafa Helal on 2021-01-16.
//

import SwiftUI

struct SignInOrCreateAccount: View {
    var body: some View {
        NavigationView {
            ZStack {
                RadialGradient(gradient: Gradient(colors: [.blue, .pink]), center: .bottom, startRadius: 2, endRadius: 650)
                
                VStack {
                    
                    Text("Start by Signing In or Creating an Account")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 400.0)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    
                    Spacer()
                        .frame(height: 20.0)
                    
                    NavigationLink(destination: SignInView()) {
                        Text("Sign In")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                            .frame(width: 200.0, height: 50.0)
                            .background(Color.lightPink)
                            .cornerRadius(/*@START_MENU_TOKEN@*/15.0/*@END_MENU_TOKEN@*/)
                            .shadow(radius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/)
                    }
                    
                    Spacer()
                        .frame(height: 20.0)
                    
                    NavigationLink(destination: CreateAccountView()) {
                        Text("Create Account")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                            .frame(width: 200.0, height: 50.0)
                            .background(Color.lightPink)
                            .cornerRadius(/*@START_MENU_TOKEN@*/15.0/*@END_MENU_TOKEN@*/)
                            .shadow(radius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/)
                    }
                    
                    Spacer()
                        .frame(height: 20.0)
                    
                    NavigationLink(destination: SwiftUIView()) {
                        Text("Log In as Guest")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                            .frame(width: 200.0, height: 50.0)
                            .background(Color.lightPink)
                            .cornerRadius(/*@START_MENU_TOKEN@*/15.0/*@END_MENU_TOKEN@*/)
                            .shadow(radius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/)
                    }
                    
                    Spacer()
                        .frame(height: 20.0)
                    
                    HStack {
                        Image("Facebook Logo")
                            .resizable()
                            .frame(width: 40.0, height: 40.0)
                            .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                            .shadow(radius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/)
                        
                        Image("Google Logo")
                            .resizable()
                            .frame(width: 40.0, height: 40.0)
                            .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                            .shadow(radius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/)
                        
                        Image("Apple Logo")
                            .resizable()
                            .frame(width: 40.0, height: 40.0)
                            .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                            .shadow(radius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/)
                    }
                }
            }
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct SignInOrCreateAccount_Previews: PreviewProvider {
    static var previews: some View {
        SignInOrCreateAccount()
    }
}
