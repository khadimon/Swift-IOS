//
//  PlayerView.swift
//  MusicApp
//
//  Created by Khadichabonu Valieva on 18/11/23.
//

import Foundation
import SwiftUI

struct PlayerView: View {
    var album: Album
    var song: Song
    
    @State var isPlaying: Bool = false
    
    var body: some View {
        ZStack {
            Image(album.image).resizable().edgesIgnoringSafeArea(.all)
            Blur(style: .dark).edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                AlbumArt(album: album, isWithText: false)
                Text(song.name).font(.title).fontWeight(.light).foregroundColor(.white)
                Spacer()
                
                ZStack {
                    Color.white.cornerRadius(20).shadow(radius: 10).padding()
                    HStack{
                        Button(action: self.previous, label: {
                            Image(systemName: "arrowshape.backward.circle").resizable()
                        }).frame(width: 50, height: 50, alignment: .center).foregroundColor(Color.black.opacity(0.2))
                        
                        Button(action: self.playPause, label: {
                            Image(systemName: isPlaying ? "pause.circle.fill" : "play.circle.fill").resizable()
                        }).frame(width: 70, height: 70, alignment: .center).padding()
                        
                        Button(action: self.next, label: {
                            Image(systemName: "arrowshape.forward.circle").resizable()
                        }).frame(width: 50, height: 50, alignment: .center).foregroundColor(Color.black.opacity(0.2))
                    }
                }.edgesIgnoringSafeArea(.bottom).frame(height:200, alignment: .center)
            }
            
        }
        
    }
    
    func playPause() {
        self.isPlaying.toggle()
    }

    func next(){
        
    }
    func previous(){
        
    }
}

