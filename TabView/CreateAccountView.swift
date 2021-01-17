//
//  CreateAccountView.swift
//  TabView
//
//  Created by Mustafa Helal on 2021-01-17.
//

import SwiftUI

struct CreateAccountView: View {
    var body: some View {
        NavigationView {
            ZStack {
                RadialGradient(gradient: Gradient(colors: [.blue, .pink]), center: .leading, startRadius: 2, endRadius: 650)
                
                VStack {
                    Image("Pink Gaming Icon")
                    .resizable()
                    .frame(width: 100.0, height: 100.0)
                    .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                    
                    Text("Create Account")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 400.0)
                        .shadow(radius: /*@START_MENU_TOKEN@*/15/*@END_MENU_TOKEN@*/)
                    
                    Spacer()
                        .frame(height: 20.0)
                    
                    TextField("Email", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        .padding(.leading)
                        .font(.headline)
                        .frame(width: 390.0, height: 50.0)
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                        
                    
                    Spacer()
                        .frame(height: 20.0)
                    
                    SecureField("Password", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        .padding(.leading)
                        .font(.headline)
                        .frame(width: 390.0, height: 50.0)
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                        
                    
                    Spacer()
                        .frame(height: 20.0)
                    
                    NavigationLink(destination: SwiftUIView()) {
                        Text("Create Account")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                            .frame(width: 390.0, height: 50.0)
                            .background(Color.lightPink)
                            .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                            .shadow(radius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/)
                    }
                    VStack {
                        Spacer()
                            .frame(height: 20.0)
                        
                        Text("By Clicking Create Account you Consent to our Terms and Service and Privacy Policy.")
                            .font(.headline)
                            .fontWeight(.thin)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .frame(width: 350.0)
                            .shadow(radius: /*@START_MENU_TOKEN@*/15/*@END_MENU_TOKEN@*/)
                        
                        Spacer()
                            .frame(height: 20.0)
                        
                    }
                    
                    Spacer()
                        .frame(height: 90.0)
            
                }
                
                
            }
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct CreateAccountView_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccountView()
    }
}
