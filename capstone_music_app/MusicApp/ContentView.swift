//
//  ContentView.swift
//  MusicApp
//
//  Created by Khadichabonu Valieva on 18/11/23.
//

import SwiftUI

struct Album: Hashable {
    var id = UUID()
    var name: String
    var image: String
    var songs: [Song]
}

struct Song: Hashable {
    var id = UUID()
    var name = String()
    var time: String
}

struct ContentView: View {
    
    var albums = [Album(name: "Album1", image:"1",
                       songs: [Song(name: "Song11", time: "2:36"),
                               Song(name: "Song12", time: "2:36"),
                               Song(name: "Song13", time: "2:36"),
                               Song(name: "Song14", time: "2:36")]),
                 Album(name: "Album2", image:"2",
                                    songs: [Song(name: "Song21", time: "2:36"),
                                            Song(name: "Song22", time: "2:36"),
                                            Song(name: "Song23", time: "2:36"),
                                            Song(name: "Song24", time: "2:36")]),
                 Album(name: "Album3", image:"3",
                                    songs: [Song(name: "Song31", time: "2:36"),
                                            Song(name: "Song32", time: "2:36"),
                                            Song(name: "Song33", time: "2:36"),
                                            Song(name: "Song34", time: "2:36")]),
                 Album(name: "Album4", image:"4",
                                    songs: [Song(name: "Song41", time: "2:36"),
                                            Song(name: "Song42", time: "2:36"),
                                            Song(name: "Song43", time: "2:36"),
                                            Song(name: "Song44", time: "2:36")]),
                 Album(name: "Album5", image:"6",
                                    songs: [Song(name: "Song51", time: "2:36"),
                                            Song(name: "Song52", time: "2:36"),
                                            Song(name: "Song53", time: "2:36"),
                                            Song(name: "Song54", time: "2:36")])]
    
    @State private var currentAlbum: Album?
    
    @State private var progress: Float = 0.0
    
    var body: some View {
        
        NavigationView{
            ScrollView {
                ScrollView(.horizontal, showsIndicators: false, content: {
                    LazyHStack {
                        ForEach(self.albums, id: \.self, content:{
                            album in
                            AlbumArt(album: album, isWithText: true).onTapGesture{
                                self.currentAlbum = album
                            } //new album view for every album
                        })
                    }
                })
                LazyVStack{
                    ForEach((self.currentAlbum?.songs ?? self.albums.first?.songs) ?? [Song(name: "Song1", time: "2:36"),
                                                                                      Song(name: "Song2", time: "2:36"),
                                                                                      Song(name: "Song3", time: "2:36"),
                                                                                      Song(name: "Song4", time: "2:36")], 
                            id: \.self,
                            content: {
                            song in
                        SongCell (album: currentAlbum ?? albums.first!, song: song)
                    }
                    
                            
                            //SLIDER FOR VOLUME CONTROLLER
                    /*
                            HStack(spacing: 15){
                        Image(systemName: "minus").foregroundColor(.black)
                        ZStack(alignment: Alignment(horizontal: .leading, vertical: .center)){
                            Capsule().fill(Color.black.opacity(0.06)).frame(height:4)
                            Capsule().fill(Color("blue")).frame(width: song.volume, height: 4)
                            
                            Circle().fill(Color("blue")).frame(width: 20, height:20).offset(x: song.volume).gesture
                        }
                    }
                    */
                    )
                }
            }.navigationTitle("My Favorites")
        }
    }
    
    
    
    
}

struct AlbumArt: View{
    var album: Album
    var isWithText: Bool
    var body: some View{
        ZStack (alignment: .bottom, content: {
            Image (album.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 170, height: 200, alignment: .center)
            
            if isWithText == true {
                ZStack{
                    Blur(style: .dark)
                    Text(album.name).foregroundColor(.white)
                }.frame(height: 60, alignment: .center)
        }
        }).frame(width: 170, height: 200, alignment:
                .center).clipped().cornerRadius(20).shadow(radius: 10).padding(20)
    }
}

struct SongCell: View {
    var album: Album
    var song: Song
    var body: some View {
        NavigationLink (
            destination: PlayerView(album:album, song: song),
            label: {
                HStack {
                    ZStack {
                        Circle().frame(width: 50, height: 50, alignment: .center).foregroundColor(.blue)
                        Circle().frame(width: 20, height: 20, alignment: .center).foregroundColor(.white)
                    }
                    Text(song.name).bold()
                    Spacer()
                    Text(song.time)
                }.padding(20)
            }).buttonStyle(PlainButtonStyle())
    }
}

struct ContentView_Previews: PreviewProvider{
    static var previews: some View{
        ContentView()
    }
}

