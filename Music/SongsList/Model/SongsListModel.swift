//
//  SongsListModel.swift
//  Music
//
//  Created by Jesús Lugo Sáenz on 09/05/25.
//

struct SongsListModel {
    let albumName: String
    let albumImage: String
    let songs: [Song]
    
    init() {
        self.albumName = ""
        self.albumImage = ""
        self.songs = []
    }
    
    init(albumName: String, albumImage: String, songs: [Song]) {
        self.albumName = albumName
        self.albumImage = albumImage
        self.songs = songs
    }
}

struct Song {
    let songName: String
    let duration: String
}
