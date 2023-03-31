//
//  InsetFactView.swift
//  Africa
//
//  Created by Jash Dhinoja on 28/03/2023.
//

import SwiftUI

struct InsetFactView: View {
    //MARK: Properties
    let animal: Animal
    
    //MARK: Body
    var body: some View {
        GroupBox{
            TabView{
                ForEach(animal.fact, id: \.self){ fact in
                    Text(fact)
                }
            }//TabView
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
            
        }
    }
}

struct InsetFactView_Previews: PreviewProvider {
    static var previews: some View {
        InsetFactView(animal: animals[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
