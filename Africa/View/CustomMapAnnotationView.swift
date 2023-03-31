//
//  CustomMapAnnotationView.swift
//  Africa
//
//  Created by Jash Dhinoja on 31/03/2023.
//

import SwiftUI

struct CustomMapAnnotationView: View {
    
    let location: Location
    @State private var animation: Double = 0.0
    
    var body: some View {
        ZStack{
            Circle()
                .fill(Color.accentColor)
                .frame(width: 54, height: 54)
            
            Circle()
                .stroke(Color.accentColor, lineWidth: 2)
                .frame(width: 52, height: 52, alignment: .center)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1-animation)
            
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
        }// ZStack
        .onAppear{
            withAnimation(.easeOut(duration: 2).repeatForever(autoreverses: false)){
                animation = 1
            }
        }
    }
}

struct CustomMapAnnotationView_Previews: PreviewProvider {
    static var previews: some View {
        CustomMapAnnotationView(location: locations[2])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
