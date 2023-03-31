//
//  HeadingView.swift
//  Africa
//
//  Created by Jash Dhinoja on 24/03/2023.
//

import SwiftUI

struct HeadingView: View {
    //MARK: Properties
    var headingImage: String
    var imageText: String
    
    var body: some View {
        HStack{
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            Text(imageText)
                .font(.title3)
                .fontWeight(.bold)
        }// HStack
        .padding()
    }
}

struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(headingImage: "photo.on.rectangle.angled", imageText: "Wilderness in pictures")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
