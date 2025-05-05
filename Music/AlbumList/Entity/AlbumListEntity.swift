//
//  AlbumListEntity.swift
//  Music
//
//  Created by Jesús Lugo Sáenz on 23/11/24.
//

import Foundation

class AlbumListEntity {
    var artistAlbumList: [ArtistAlbumModel] = [
            ArtistAlbumModel(artistName: "The Beatles", albums: [AlbumModel(image: .beatlesAbbeyRoad, title: "Abbey Road"), AlbumModel(image: .letItBeBeatles, title: "Let It Be"), AlbumModel(image: .revolverBeatles, title: "Revolver")]),
            ArtistAlbumModel(artistName: "Queen", albums: [AlbumModel(image: .queenAlbum1, title: "A Night at the Opera"), AlbumModel(image: .queenAlbum2, title: "News of the World"), AlbumModel(image: .queenAlbum3, title: "The Game")]),
            ArtistAlbumModel(artistName: "Pink Floyd", albums: [AlbumModel(image: .pinkfloydAlbum1, title: "The Dark Side of the Moon"), AlbumModel(image: .pinkfloydAlbum2, title: "Wish You Were Here"), AlbumModel(image: .pinkfloydAlbum3, title: "Animals")]),
            ArtistAlbumModel(artistName: "Led Zeppelin", albums: [AlbumModel(image: .zeppelinAlbum1, title: "Led Zeppelin IV"), AlbumModel(image: .zeppelinAlbum2, title: "Physical Graffiti"), AlbumModel(image: .zeppelinAlbum3, title: "Houses if the Holy")]),
            ArtistAlbumModel(artistName: "David Bowie", albums: [AlbumModel(image: .bowieAlbum1, title: "The Rise and Fall of Ziggy Stardust"), AlbumModel(image: .bowieAlbum2, title: "Heroes"), AlbumModel(image: .bowieAlbum3, title: "Hunky Dory")])
        ]
}
