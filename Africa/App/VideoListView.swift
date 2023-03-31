//
//  VideoListView.swift
//  Africa
//
//  Created by Jash Dhinoja on 23/03/2023.
//

import SwiftUI

struct VideoListView: View {
    @State var dataVideos = videos
    var body: some View {
        NavigationView{
            List{
                ForEach(dataVideos){ video in
                    NavigationLink(destination: VideoPlayerView(videoTitle: video.id)) {
                        VideoListItemView(video: video)
                    }
                }
            }// List
            .padding(.vertical, 8)
            .navigationTitle("Videos")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button(action: {
                        dataVideos.shuffle()
                    }, label: {
                        Image(systemName: "arrow.2.squarepath")
                    })
                }
            }
        }// Navigation View
    }
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
