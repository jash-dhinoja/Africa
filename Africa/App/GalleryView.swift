//
//  GalleryView.swift
//  Africa
//
//  Created by Jash Dhinoja on 23/03/2023.
//

import SwiftUI

struct GalleryView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            MotionAnimationView()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
