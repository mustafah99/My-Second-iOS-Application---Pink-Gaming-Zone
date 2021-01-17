//
//  SwiftUIView.swift
//  TabView
//
//  Created by Mustafa Helal on 2021-01-16.
//

import SwiftUI

struct SwiftUIView: View {
    
    @State public var fadeInOut = true

    var body: some View {
        TabView {
            FirstView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            SecondView()
                .tabItem {
                    Image(systemName: "gamecontroller")
                    Text("Games")
                }
            
            ThirdView()
                .tabItem {
                    Image(systemName: "1.circle.fill")
                    Text("Leaderboard")
                }
            
            FourthView()
                .tabItem {
                    Image(systemName: "person.circle.fill")
                    Text("Profile")
                }
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .navigationViewStyle(StackNavigationViewStyle())
        .onAppear {
            withAnimation(Animation.easeInOut(duration: 0.6)) {
                fadeInOut.toggle()
            }
        }.opacity(fadeInOut ? 0 : 1)
    }
}

struct FirstView : View {
    var body: some View {
        
        ZStack {
            RadialGradient(gradient: Gradient(colors: [.blue, .pink]), center: .leading, startRadius: 2, endRadius: 650)
            
            VStack {
                Text("Welcome to The Pink Gaming Zone")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 15.0)
                
                Text("Play Now")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .frame(width: 225.0, height: 38.0)
                    .background(Color.lightPink)
                    .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                    .shadow(radius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/)
                
            Spacer()
                .frame(height: 10.0)
                
            
            Text("1 Month Free, then 59,00 kr / Month.")
                .font(.caption2)
                .fontWeight(.semibold)
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
                
            }
            
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
    }
}

struct SecondView : View {
    var body : some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [.blue, .pink]), center: .bottom, startRadius: 2, endRadius: 650)
            ScrollView {
                VStack {
                    Text("Welcome.")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                    Text("What would you like to play?")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 10.0)
                    
                    VStack {
                        Image("Oceanhorn")
                            .resizable()
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            .frame(width: 300.0, height: 170.0)
                        
                        Image("Minecraft Dungeons")
                            .resizable()
                            .shadow(radius: 10)
                            .frame(width: 300.0, height: 170.0)
                        
                        Image("Sonic")
                            .resizable()
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            .frame(width: 300.0, height: 170.0)
                        
                        Image("Super Mario Run")
                            .resizable()
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            .frame(width: 300.0, height: 170.0)
                        
                        Image("Among Us")
                            .resizable()
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            .frame(width: 300.0, height: 170.0)
                        
                        Image("Pokemon")
                            .resizable()
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            .frame(width: 300.0, height: 170.0)
                        
                        Image("PUBG")
                            .resizable()
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            .frame(width: 300.0, height: 170.0)
                        
                        Image("Genshin")
                            .resizable()
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            .frame(width: 300.0, height: 170.0)
                        
                        Image("LoL Wild Rift")
                            .resizable()
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            .frame(width: 300.0, height: 170.0)
                    }
                    .padding(.bottom, 70.0)
                }
            }
            .padding(120.0)
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
    }
}

struct ThirdView : View {
    var body : some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [.blue, .pink]), center: .bottom, startRadius: 2, endRadius: 650)
            ScrollView {
                VStack {
                    Text("Leaderboard.")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                    Text("Here are the top scores for the top players this week.")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 10.0)
                    
                    VStack {
                        Image("Oceanhorn")
                            .resizable()
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            .frame(width: 300.0, height: 170.0)
                        Text("Al.King00 - 250 Points")
                            .fontWeight(.medium)
                            .foregroundColor(Color.white)
                            .padding()
                            .frame(width: 300.0, height: 50.0)
                            .border(/*@START_MENU_TOKEN@*/Color.white/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        
                        Spacer()
                            .frame(height: 25.0)
                    }
                    VStack {
                        Image("Minecraft Dungeons")
                            .resizable()
                            .shadow(radius: 10)
                            .frame(width: 300.0, height: 170.0)
                        Text("MouseInTheHouse - 330 Points")
                            .fontWeight(.medium)
                            .foregroundColor(Color.white)
                            .padding()
                            .frame(width: 300.0, height: 50.0)
                            .border(/*@START_MENU_TOKEN@*/Color.white/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        
                        Spacer()
                            .frame(height: 25.0)
                    }
                    VStack {
                        Image("Sonic")
                            .resizable()
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            .frame(width: 300.0, height: 170.0)
                        Text("TooFastToFurious - 500 Points")
                            .fontWeight(.medium)
                            .foregroundColor(Color.white)
                            .padding()
                            .frame(width: 300.0, height: 50.0)
                            .border(/*@START_MENU_TOKEN@*/Color.white/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        
                        Spacer()
                            .frame(height: 25.0)
                    }
                    VStack {
                        Image("Super Mario Run")
                            .resizable()
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            .frame(width: 300.0, height: 170.0)
                        Text("LuigiNotMario - 80 Points")
                            .fontWeight(.medium)
                            .foregroundColor(Color.white)
                            .padding()
                            .frame(width: 300.0, height: 50.0)
                            .border(/*@START_MENU_TOKEN@*/Color.white/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        
                        Spacer()
                            .frame(height: 25.0)
                    }
                    VStack {
                        Image("Among Us")
                            .resizable()
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            .frame(width: 300.0, height: 170.0)
                        Text("ShhImNotTheImposter - 90 Points")
                            .fontWeight(.medium)
                            .foregroundColor(Color.white)
                            .padding()
                            .frame(width: 300.0, height: 50.0)
                            .border(/*@START_MENU_TOKEN@*/Color.white/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        
                        Spacer()
                            .frame(height: 25.0)
                    }
                    VStack {
                        Image("Pokemon")
                            .resizable()
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            .frame(width: 300.0, height: 170.0)
                        Text("AshKetchup12 - 120 Points")
                            .fontWeight(.medium)
                            .foregroundColor(Color.white)
                            .padding()
                            .frame(width: 300.0, height: 50.0)
                            .border(/*@START_MENU_TOKEN@*/Color.white/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        
                        Spacer()
                            .frame(height: 25.0)
                    }
                    VStack {
                        Image("PUBG")
                            .resizable()
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            .frame(width: 300.0, height: 170.0)
                        Text("AbbeInDaHouse - 9000 Points")
                            .fontWeight(.medium)
                            .foregroundColor(Color.white)
                            .padding()
                            .frame(width: 300.0, height: 50.0)
                            .border(/*@START_MENU_TOKEN@*/Color.white/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        
                        Spacer()
                            .frame(height: 25.0)
                        
                    }
                    
                    VStack {
                        Image("Genshin")
                            .resizable()
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            .frame(width: 300.0, height: 170.0)
                        Text("MyLittleBrother - 50 Points")
                            .fontWeight(.medium)
                            .foregroundColor(Color.white)
                            .padding()
                            .frame(width: 300.0, height: 50.0)
                            .border(/*@START_MENU_TOKEN@*/Color.white/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        
                        Spacer()
                            .frame(height: 25.0)
                        
                        Image("LoL Wild Rift")
                            .resizable()
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            .frame(width: 300.0, height: 170.0)
                        Text("SamirGotGolden - 1250 Points")
                            .fontWeight(.medium)
                            .foregroundColor(Color.white)
                            .padding()
                            .frame(width: 300.0, height: 50.0)
                            .border(/*@START_MENU_TOKEN@*/Color.white/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    }
                }
            }
            .padding(120.0)
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct FourthView : View {
    var body: some View {
        
        ZStack {
            RadialGradient(gradient: Gradient(colors: [.blue, .pink]), center: .leading, startRadius: 2, endRadius: 650)
            
            VStack {
                
                Spacer()
                    .frame(height: 85.0)
                
                HStack {
                    Text("Yellow Lightning 23")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        
                        Image(systemName:"person.circle.fill")
                            .font(.system(size:35))
                            .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                }
                .padding(.bottom)
                
                HStack {
                    Image("Pikachu Profile")
                        .resizable()
                        .frame(width: 200.0, height: 200.0)
                        .cornerRadius(/*@START_MENU_TOKEN@*/250.0/*@END_MENU_TOKEN@*/)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                }
                
                VStack {
                    Text("Pinkalicious Rank")
                        .font(.largeTitle)
                        .fontWeight(.ultraLight)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                }
                
                HStack(spacing:25) {
                    Image("Facebook Logo")
                        .resizable()
                        .frame(width: 40.0, height: 40.0)
                        .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                        .shadow(radius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/)
                    
                    Image("Twitter")
                        .resizable()
                        .frame(width: 40.0, height: 40.0)
                        .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                        .shadow(radius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/)
                    
                    Image("Twitch")
                        .resizable()
                        .frame(width: 40.0, height: 40.0)
                        .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                        .shadow(radius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/)
                    
                    Image("Youtube")
                        .resizable()
                        .frame(width: 40.0, height: 40.0)
                        .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                        .shadow(radius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/)
                }
                
                Spacer()
                    .frame(height: 25.0)
                
                VStack {
                    HStack {
                        Text("Top Achievements")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.center)
                        
                        Image(systemName:"star.circle.fill")
                            .font(.system(size:35))
                            .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                        
                    }
                    
                    Spacer()
                        .frame(height: 10.0)
                    
                    VStack {
                        Image("Super Mario Run")
                            .resizable()
                            .shadow(radius: 15)
                            .frame(width: 300.0, height: 170.0)
                        
                        Text("Super Mario Run - Golden Rank [87%]")
                            .font(.title2)
                            .fontWeight(.thin)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.center)
                    }
                    
                    
                }
                .frame(width: 500.0, height: 300.0)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/)
                .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                
                Spacer()
                
            }
            
            
            
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
