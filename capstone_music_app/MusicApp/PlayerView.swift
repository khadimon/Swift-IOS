//
//  PlayerView.swift
//  MusicApp
//
//  Created by Khadichabonu Valieva on 18/11/23.
//

import Foundation
import SwiftUI
import AVFoundation

struct PlayerView: View {
    @State var album: Album
    @State var song: Song
    
    var url = URL(string: "mp3_url")
    var player = AVPlayer()
    
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
   
    func playSong(){
       // var player = AVPLayer(url: url!)
        player.play()
    }
    
    
    
    func playPause() {
        self.isPlaying.toggle()
        if isPlaying == false {
            player.pause()
        }
        else {
            player.play()
        }
    }

    func next(){
        if let currentIndex = album.songs.firstIndex(of: song){
            if currentIndex == album.songs.count - 1 {
                
            }
            else {
                player.pause()
                song = album.songs[currentIndex + 1]
                self.playSong()
            }
        }
    }
    func previous(){
        if let currentIndex = album.songs.firstIndex(of: song) {
            if currentIndex == album.songs.count - 1 {
                
            }
            else {
                player.pause()
                song = album.songs[currentIndex - 1]
                self.playSong()
                
                
            }
        }
        
    }
}

