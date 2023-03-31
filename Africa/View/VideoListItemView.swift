//
//  VideoListItem.swift
//  Africa
//
//  Created by Jash Dhinoja on 30/03/2023.
//

import SwiftUI

struct VideoListItemView: View {
    //MARK: Properties
    let video: Video
    
    //MARK: Body
    var body: some View {
        HStack(spacing: 10){
            Image("video-\(video.id)")
                .resizable()
                .scaledToFit()
                .frame(height:80)
                .cornerRadius(9)
                .overlay(alignment: .center){
                    Image(systemName: "play.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 32)
                        .shadow(radius: 4)
                }
            VStack(alignment: .leading,spacing: 10){
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            }
        }// Hstack
    }
}

struct VideoListItem_Previews: PreviewProvider {
    static var previews: some View {
        VideoListItemView(video: videos[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
