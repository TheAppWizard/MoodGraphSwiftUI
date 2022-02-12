//
//  CardView.swift
//  MoodGraph
//
//  Created by Shreyas Vilaschandra Bhike on 12/02/22.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 25)
                .foregroundColor(.black.opacity(0.5))
                .frame(width: 400, height: 200)
            
            
            ZStack{
                VStack{
                   
                        Text("C A T E G O R I E S")
                            .font(.title2)
                            .foregroundColor(.white)
                            
                    Spacer().frame(width: 0, height: 30)
                    
                    HStack{
                        VStack{
                            MiniCardView(color: Color("muniredone"), text: "R O C K")
                                .offset(x: 8, y: 0)
                            
                            MiniCardView(color: Color("municyan"), text: "P O P")
                            
                            MiniCardView(color: Color("muniyellow"), text: "B L U E S")
                                .offset(x: 14, y: 0)
                        }
                        
                        Spacer().frame(width: 60, height: 0)
                        
                        VStack{
                            MiniCardView(color: Color("muniviolet"), text: "J A Z Z")
                            
                            MiniCardView(color: Color("munigreen"), text: "D I S C O")
                                .offset(x: 8, y: 0)
                            
                            Spacer().frame(width: 80, height: 0)
                        }
                    }  .offset(x: -5, y: 0)
                }.padding()
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}


struct MiniCardView: View {
    @State var color = Color.red
    @State var text = "R O C K"
    
    var body: some View {
        HStack{
            RoundedRectangle(cornerRadius: 5)
                .foregroundColor(color)
                .frame(width: 20, height: 20)
            
            Spacer().frame(width: 10, height: 0)
            Text(text)
                .foregroundColor(.white)
        }
    }
}
