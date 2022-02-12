//
//  GraphView.swift
//  MoodGraph
//
//  Created by Shreyas Vilaschandra Bhike on 12/02/22.
//

import SwiftUI

struct GraphView: View {
    @State private var blobAnimate = false
   
    var body: some View {
       
        ZStack{
            
            ZStack{
                BlobOne()
                    .foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color("muniblue"), .white, .pink]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(width: 300, height: 300)
                    .offset(x: 80, y: 80)
                    .shadow(color: .blue, radius: 12)

               .scaleEffect(blobAnimate ? 1 : 1.5)
                
                
               
                BlobOne()
                        .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.purple, .blue, .pink]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(width: 200, height: 200)
                    .offset(x: 80, y: 80)
                    .shadow(color: .blue, radius: 12)
                    .scaleEffect(blobAnimate ? 1 : 1.5)
                
            }
                
                
    
            BlobTwo()
            .foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color("muniredone"), .red, .orange]), startPoint: .topLeading, endPoint: .bottomTrailing))
                .frame(width: 300, height: 300)
                .offset(x: 80, y: -80)
                .shadow(color: .red, radius: 12)
                .scaleEffect(blobAnimate ? 1 : 1.5)
             
            
            
           
            BlobTwo()
            .foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color("muniyellow"), .red, .pink]), startPoint: .topLeading, endPoint: .bottomTrailing))
                .frame(width: 300, height: 300)
                .offset(x: -80, y: 80)
                .shadow(color: .orange, radius: 12)
                .scaleEffect(blobAnimate ? 1 : 1.5)
               
            
            
            
         
            BlobOne()
                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color("munigreen"), .blue, .pink]), startPoint: .topLeading, endPoint: .bottomTrailing))
                .frame(width: 350, height: 350)
                .offset(x: -50, y: -50)
                .shadow(color: .green, radius: 12)
                .scaleEffect(blobAnimate ? 1 : 1.5)
                
                }.onAppear {
                    withAnimation(Animation.easeInOut(duration: 2).delay(0.2).repeatForever(autoreverses: true))
                           {
                            blobAnimate.toggle()
                            }
                        }
        }
}






struct GraphView_Previews: PreviewProvider {
    static var previews: some View {
        GraphView()
    }
}
