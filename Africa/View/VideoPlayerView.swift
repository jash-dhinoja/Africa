//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Jash Dhinoja on 31/03/2023.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    //MARK: Properties
    let videoTitle: String
    
    //MARK: Body
    var body: some View {
        VideoPlayer(player: loadVideoPlayer(fileName: videoTitle,
                                            fileExtension: "mp4"))
        .navigationTitle(videoTitle.uppercased())
        
    }
    
    func loadVideoPlayer(fileName: String, fileExtension: String) -> AVPlayer{
        if let videoURL = Bundle.main.url(forResource: fileName, withExtension: fileExtension){
            let player = AVPlayer(url: videoURL)
            player.play()
            return player
        }
        return AVPlayer()
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerView(videoTitle: "lion")
    }
}
