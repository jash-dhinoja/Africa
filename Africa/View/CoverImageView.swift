//
//  CoverImageView.swift
//  Africa
//
//  Created by Jash Dhinoja on 23/03/2023.
//

import SwiftUI

struct CoverImageView: View {
    //MARK: Properties
    
    //MARK: Body
    var body: some View {
        TabView{
            ForEach(coverImages) { coverImage in
                Image(coverImage.name)
                    .resizable()
                    .scaledToFill()
            }// Foreach
        }// TabView
        .tabViewStyle(PageTabViewStyle())
    }
}

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
