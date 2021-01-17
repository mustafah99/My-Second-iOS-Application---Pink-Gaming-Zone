//
//  ContentView.swift
//  TabView
//
//  Created by Mustafa Helal on 2021-01-16.
//

import SwiftUI


struct ContentView: View {
    

    var body: some View {
        NavigationView {
            ZStack {
                RadialGradient(gradient: Gradient(colors: [.blue, .pink]), center: .bottom, startRadius: 2, endRadius: 650)
                
                VStack {
                    
                    Image("Pink Gaming Icon")
                        .resizable()
                        .frame(width: 300.0, height: 300.0)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    
                    Text("Adding Fun to Your Life")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 250.0)
                    
                    Text("We provide more than just mobile gaming experience.")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        .frame(width: 250.0)
                    
                    NavigationLink(destination: SignInOrCreateAccount()) {
                        Text("Get Started")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                            .frame(width: 200.0, height: 50.0)
                            .background(Color.lightPink)
                            .cornerRadius(/*@START_MENU_TOKEN@*/15.0/*@END_MENU_TOKEN@*/)
                            .shadow(radius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/)
                    }
                }
            }
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .navigationViewStyle(StackNavigationViewStyle())
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
