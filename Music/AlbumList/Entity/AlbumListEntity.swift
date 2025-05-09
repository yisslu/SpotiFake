//
//  AlbumListEntity.swift
//  Music
//
//  Created by Jesús Lugo Sáenz on 23/11/24.
//

import Foundation

struct ArtistAlbumEntity: Codable, Identifiable {
    let id: Int
    let artistName: String
    let albums: [Album]
}

struct Album: Codable {
    let id: Int
    let image: String
    let title: String
    
    init() {
        self.id = 0
        self.image = ""
        self.title = ""
    }
}
