//
//  ContentView.swift
//  MoodGraph
//
//  Created by Shreyas Vilaschandra Bhike on 12/02/22.
//  MARK: The App Wizard
//  Instagram :
//  MARK: @theappwizard2408

import SwiftUI


struct ContentView: View {
    var body: some View {
        MainView()
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

















struct MainView: View {
    @State private var animateAll = false
    @State private var profileTap = false
    var body: some View {
        
        
        ZStack{

            
            Color("darkend").edgesIgnoringSafeArea(.all)
            
            
            Circle()
                .frame(width: 500, height:500)
                .offset(x: 0, y: -310)
            
            
            Circle()
                .frame(width: 500, height:500)
                .offset(x: 0, y: 300)
                
            
            VStack{
                
                Text("M U S I C   M O O D ")
                    .font(.system(size: 38))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(width: 200, height: 45)
            
                    ZStack{
                        GraphView()
                            .offset(x: 150, y: 150)
                            .clipShape(Circle())
                            .shadow(color: animateAll ? Color("munigreen") : Color("municyan"), radius: 3)
                            .rotationEffect(.degrees(animateAll ? -270 : 200))
                            .onAppear {
                                withAnimation(Animation.easeInOut(duration: 10).repeatForever(autoreverses: true))
                                       {
                                        animateAll.toggle()
                                        }
                                }
                        
                            ZStack{
                                Image("profile")
                                    .resizable()
                                    .frame(width: 150, height: 150)
                                    .clipShape(Circle())
                                    .overlay {
                                        Circle().stroke(.white, lineWidth: 5)
                                        
                                    }
                                    .gesture(
                                            TapGesture()
                                                .onEnded({
                                                profileTap.toggle()
                                                    })
                                        )
                                
                                if profileTap {
                                    ZStack{
                                       RoundedRectangle(cornerRadius: 8)
                                            .foregroundColor(.white)
                                            .frame(width: 135, height: 30)
                                            .overlay {
                                                RoundedRectangle(cornerRadius: 8).stroke(.black, lineWidth: 1)
                                                
                                            }
                                        
                                        Text("The App Wizard")
                                        
                                        
                                    }.offset(x: 0, y: 65)
                                  }
                            }
                    }
                
                Spacer()
                    .frame(width: 200, height: 60)
                
                CardView()
          
            }.padding()
        }
    }
}





