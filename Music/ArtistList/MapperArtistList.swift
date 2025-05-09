//
//  MapperArtistList.swift
//  Music
//
//  Created by Jesús Lugo Sáenz on 08/05/25.
//

import Foundation

struct MapperArtistList {
    var artists: [String] = []
    
    mutating func map(this artistList: [ArtistListEntity]) -> [String] {
        for artist in artistList {
            artists.append(artist.name)
        }
        
        return artists
    }
}
