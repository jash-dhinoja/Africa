//
//  InsetGalleryView.swift
//  Africa
//
//  Created by Jash Dhinoja on 24/03/2023.
//

import SwiftUI

struct InsetGalleryView: View {
    //MARK: Properties
    let animal: Animal
    
    //MARK: Body
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            HStack(alignment: .center, spacing: 15){
                ForEach(animal.gallery, id: \.self) { image in
                    Image(image)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                }// For Each                
            }// HStack
        }// Scroll View
    }
}

struct InsetGalleryView_Previews: PreviewProvider {
    static var previews: some View {
        InsetGalleryView(animal: animals[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
