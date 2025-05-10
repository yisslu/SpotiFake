////
////  SongsListEntity.swift
////  Music
////
////  Created by Jesús Lugo Sáenz on 23/11/24.
////


struct SongsListEntity: Decodable {
    let artistId: Int
    let albumId: Int
    let albumName: String
    let albumImage: String
    let songs: [SongModel]
    
    enum CodingKeys: String, CodingKey {
            case artistId, albumId, albumName, albumImage, songs
        }
}

struct SongModel: Decodable {
    let id: Int
    let songName: String
    let duration: Int
}
