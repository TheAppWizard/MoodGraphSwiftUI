//
//  BlobShape.swift
//  MoodGraph
//
//  Created by Shreyas Vilaschandra Bhike on 12/02/22.
//

import SwiftUI

struct BlobShape: View {
    var body: some View {
       
        ZStack{
       
            
        BlobOne()
            .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.blue, .white, .pink]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .frame(width: 300, height: 300)
            .offset(x: 150, y: 150)
            
            
        
        BlobTwo()
        .foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color("muniyellow"), .red, .pink]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .frame(width: 300, height: 300)
            .offset(x: 150, y: 150)
        }
           
    }
}

struct BlobShape_Previews: PreviewProvider {
    static var previews: some View {
        BlobShape()
    }
}


struct BlobOne: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.2285*width, y: -0.3835*height))
        path.addCurve(to: CGPoint(x: 0.367*width, y: -0.2285*height), control1: CGPoint(x: 0.298*width, y: -0.356*height), control2: CGPoint(x: 0.3565*width, y: -0.298*height))
        path.addCurve(to: CGPoint(x: 0.335*width, y: -0.004*height), control1: CGPoint(x: 0.378*width, y: -0.1595*height), control2: CGPoint(x: 0.3415*width, y: -0.08*height))
        path.addCurve(to: CGPoint(x: 0.3275*width, y: 0.1915*height), control1: CGPoint(x: 0.328*width, y: 0.072*height), control2: CGPoint(x: 0.3505*width, y: 0.1435*height))
        path.addCurve(to: CGPoint(x: 0.172*width, y: 0.2795*height), control1: CGPoint(x: 0.304*width, y: 0.239*height), control2: CGPoint(x: 0.2345*width, y: 0.2625*height))
        path.addCurve(to: CGPoint(x: -0.01*width, y: 0.3245*height), control1: CGPoint(x: 0.11*width, y: 0.2965*height), control2: CGPoint(x: 0.055*width, y: 0.3075*height))
        path.addCurve(to: CGPoint(x: -0.2135*width, y: 0.3485*height), control1: CGPoint(x: -0.0745*width, y: 0.3415*height), control2: CGPoint(x: -0.149*width, y: 0.3645*height))
        path.addCurve(to: CGPoint(x: -0.356*width, y: 0.213*height), control1: CGPoint(x: -0.2775*width, y: 0.3325*height), control2: CGPoint(x: -0.3315*width, y: 0.2775*height))
        path.addCurve(to: CGPoint(x: -0.3715*width, y: 0.0025*height), control1: CGPoint(x: -0.3805*width, y: 0.148*height), control2: CGPoint(x: -0.376*width, y: 0.074*height))
        path.addCurve(to: CGPoint(x: -0.334*width, y: -0.1945*height), control1: CGPoint(x: -0.3675*width, y: -0.0695*height), control2: CGPoint(x: -0.364*width, y: -0.1385*height))
        path.addCurve(to: CGPoint(x: -0.189*width, y: -0.3255*height), control1: CGPoint(x: -0.3045*width, y: -0.2505*height), control2: CGPoint(x: -0.249*width, y: -0.2925*height))
        path.addCurve(to: CGPoint(x: 0.0075*width, y: -0.394*height), control1: CGPoint(x: -0.129*width, y: -0.358*height), control2: CGPoint(x: -0.0645*width, y: -0.3805*height))
        path.addCurve(to: CGPoint(x: 0.2285*width, y: -0.3835*height), control1: CGPoint(x: 0.08*width, y: -0.407*height), control2: CGPoint(x: 0.1595*width, y: -0.411*height))
        path.closeSubpath()
        return path
    }
}


struct BlobTwo: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.1865*width, y: -0.298*height))
        path.addCurve(to: CGPoint(x: 0.295*width, y: -0.183*height), control1: CGPoint(x: 0.241*width, y: -0.292*height), control2: CGPoint(x: 0.2835*width, y: -0.24*height))
        path.addCurve(to: CGPoint(x: 0.3035*width, y: 0.009*height), control1: CGPoint(x: 0.307*width, y: -0.1255*height), control2: CGPoint(x: 0.2875*width, y: -0.0625*height))
        path.addCurve(to: CGPoint(x: 0.355*width, y: 0.2135*height), control1: CGPoint(x: 0.3195*width, y: 0.081*height), control2: CGPoint(x: 0.37*width, y: 0.162*height))
        path.addCurve(to: CGPoint(x: 0.1895*width, y: 0.3145*height), control1: CGPoint(x: 0.34*width, y: 0.2655*height), control2: CGPoint(x: 0.2595*width, y: 0.2875*height))
        path.addCurve(to: CGPoint(x: 0.0025*width, y: 0.3685*height), control1: CGPoint(x: 0.1195*width, y: 0.3415*height), control2: CGPoint(x: 0.0595*width, y: 0.373*height))
        path.addCurve(to: CGPoint(x: -0.1585*width, y: 0.2845*height), control1: CGPoint(x: -0.0545*width, y: 0.364*height), control2: CGPoint(x: -0.1085*width, y: 0.323*height))
        path.addCurve(to: CGPoint(x: -0.2835*width, y: 0.1625*height), control1: CGPoint(x: -0.2085*width, y: 0.246*height), control2: CGPoint(x: -0.254*width, y: 0.2095*height))
        path.addCurve(to: CGPoint(x: -0.327*width, y: -0.001*height), control1: CGPoint(x: -0.3125*width, y: 0.1155*height), control2: CGPoint(x: -0.325*width, y: 0.0575*height))
        path.addCurve(to: CGPoint(x: -0.3035*width, y: -0.1885*height), control1: CGPoint(x: -0.329*width, y: -0.06*height), control2: CGPoint(x: -0.3205*width, y: -0.12*height))
        path.addCurve(to: CGPoint(x: -0.2105*width, y: -0.3415*height), control1: CGPoint(x: -0.287*width, y: -0.257*height), control2: CGPoint(x: -0.262*width, y: -0.334*height))
        path.addCurve(to: CGPoint(x: -0.0065*width, y: -0.2745*height), control1: CGPoint(x: -0.1585*width, y: -0.3485*height), control2: CGPoint(x: -0.079*width, y: -0.286*height))
        path.addCurve(to: CGPoint(x: 0.1865*width, y: -0.298*height), control1: CGPoint(x: 0.066*width, y: -0.2635*height), control2: CGPoint(x: 0.1325*width, y: -0.3035*height))
        path.closeSubpath()
        return path
    }
}



