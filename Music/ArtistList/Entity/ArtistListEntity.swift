//
//  ArtistListEntity.swift
//  Music
//
//  Created by Jesús Lugo Sáenz on 09/11/24.
//

import UIKit


struct ArtistListEntity: Decodable{
    let id: Int
    let name: String
}



//[
//    ArtistAlbumModel(
//        artistName: "The Beatles",
//        artistAlbums: [
//            AlbumModel(id: 1, image: UIImage.beatlesAbbeyRoad, title: "Abbey Road", artistName: "The Beatles", songsList: [
//                SongsModel(albumImage: UIImage.beatlesAbbeyRoad, songName: "Come Together", artistName: "The Beatles", duration: 259),
//                SongsModel(albumImage: UIImage.beatlesAbbeyRoad, songName: "Something", artistName: "The Beatles", duration: 183),
//                SongsModel(albumImage: UIImage.beatlesAbbeyRoad, songName: "Maxwell's Silver Hammer", artistName: "The Beatles", duration: 207),
//                SongsModel(albumImage: UIImage.beatlesAbbeyRoad, songName: "Octopus's Garden", artistName: "The Beatles", duration: 170)
//            ]),
//            AlbumModel(id: 2, image: UIImage.letItBeBeatles, title: "Let It Be", artistName: "The Beatles", songsList: [
//                SongsModel(albumImage: UIImage.letItBeBeatles, songName: "Let It Be", artistName: "The Beatles", duration: 243),
//                SongsModel(albumImage: UIImage.letItBeBeatles, songName: "Across the Universe", artistName: "The Beatles", duration: 221),
//                SongsModel(albumImage: UIImage.letItBeBeatles, songName: "I Me Mine", artistName: "The Beatles", duration: 138),
//                SongsModel(albumImage: UIImage.letItBeBeatles, songName: "Get Back", artistName: "The Beatles", duration: 186)
//            ]),
//            AlbumModel(id: 3, image: UIImage.revolverBeatles, title: "Revolver", artistName: "The Beatles", songsList: [
//                SongsModel(albumImage: UIImage.revolverBeatles, songName: "Eleanor Rigby", artistName: "The Beatles", duration: 138),
//                SongsModel(albumImage: UIImage.revolverBeatles, songName: "Yellow Submarine", artistName: "The Beatles", duration: 162),
//                SongsModel(albumImage: UIImage.revolverBeatles, songName: "Good Day Sunshine", artistName: "The Beatles", duration: 133),
//                SongsModel(albumImage: UIImage.revolverBeatles, songName: "For No One", artistName: "The Beatles", duration: 120)
//            ])
//        ]
//    ),
//    ArtistAlbumModel(
//        artistName: "Queen",
//        artistAlbums: [
//            AlbumModel(id: 4, image: UIImage(named: "queen_album_1")!, title: "A Night at the Opera", artistName: "Queen", songsList: [
//                SongsModel(albumImage: UIImage(named: "queen_album_1")!, songName: "Bohemian Rhapsody", artistName: "Queen", duration: 354),
//                SongsModel(albumImage: UIImage(named: "queen_album_1")!, songName: "You're My Best Friend", artistName: "Queen", duration: 170),
//                SongsModel(albumImage: UIImage(named: "queen_album_1")!, songName: "Love of My Life", artistName: "Queen", duration: 210),
//                SongsModel(albumImage: UIImage(named: "queen_album_1")!, songName: "'39", artistName: "Queen", duration: 204)
//            ]),
//            AlbumModel(id: 5, image: UIImage(named: "queen_album_2")!, title: "News of the World", artistName: "Queen", songsList: [
//                SongsModel(albumImage: UIImage(named: "queen_album_2")!, songName: "We Will Rock You", artistName: "Queen", duration: 122),
//                SongsModel(albumImage: UIImage(named: "queen_album_2")!, songName: "We Are the Champions", artistName: "Queen", duration: 179),
//                SongsModel(albumImage: UIImage(named: "queen_album_2")!, songName: "Spread Your Wings", artistName: "Queen", duration: 276),
//                SongsModel(albumImage: UIImage(named: "queen_album_2")!, songName: "It's Late", artistName: "Queen", duration: 447)
//            ]),
//            AlbumModel(id: 6, image: UIImage(named: "queen_album_3")!, title: "The Game", artistName: "Queen", songsList: [
//                SongsModel(albumImage: UIImage(named: "queen_album_3")!, songName: "Another One Bites the Dust", artistName: "Queen", duration: 217),
//                SongsModel(albumImage: UIImage(named: "queen_album_3")!, songName: "Crazy Little Thing Called Love", artistName: "Queen", duration: 161),
//                SongsModel(albumImage: UIImage(named: "queen_album_3")!, songName: "Save Me", artistName: "Queen", duration: 223),
//                SongsModel(albumImage: UIImage(named: "queen_album_3")!, songName: "Play the Game", artistName: "Queen", duration: 204)
//            ])
//        ]
//    ),
//    ArtistAlbumModel(
//        artistName: "Pink Floyd",
//        artistAlbums: [
//            AlbumModel(id: 7, image: UIImage(named: "pinkfloyd_album_1")!, title: "The Dark Side of the Moon", artistName: "Pink Floyd", songsList: [
//                SongsModel(albumImage: UIImage(named: "pinkfloyd_album_1")!, songName: "Money", artistName: "Pink Floyd", duration: 382),
//                SongsModel(albumImage: UIImage(named: "pinkfloyd_album_1")!, songName: "Time", artistName: "Pink Floyd", duration: 413),
//                SongsModel(albumImage: UIImage(named: "pinkfloyd_album_1")!, songName: "Us and Them", artistName: "Pink Floyd", duration: 470),
//                SongsModel(albumImage: UIImage(named: "pinkfloyd_album_1")!, songName: "Brain Damage", artistName: "Pink Floyd", duration: 228)
//            ]),
//            AlbumModel(id: 8, image: UIImage(named: "pinkfloyd_album_2")!, title: "Wish You Were Here", artistName: "Pink Floyd", songsList: [
//                SongsModel(albumImage: UIImage(named: "pinkfloyd_album_2")!, songName: "Shine On You Crazy Diamond", artistName: "Pink Floyd", duration: 810),
//                SongsModel(albumImage: UIImage(named: "pinkfloyd_album_2")!, songName: "Wish You Were Here", artistName: "Pink Floyd", duration: 335),
//                SongsModel(albumImage: UIImage(named: "pinkfloyd_album_2")!, songName: "Welcome to the Machine", artistName: "Pink Floyd", duration: 437),
//                SongsModel(albumImage: UIImage(named: "pinkfloyd_album_2")!, songName: "Have a Cigar", artistName: "Pink Floyd", duration: 309)
//            ]),
//            AlbumModel(id: 9, image: UIImage(named: "pinkfloyd_album_3")!, title: "Animals", artistName: "Pink Floyd", songsList: [
//                SongsModel(albumImage: UIImage(named: "pinkfloyd_album_3")!, songName: "Dogs", artistName: "Pink Floyd", duration: 1024),
//                SongsModel(albumImage: UIImage(named: "pinkfloyd_album_3")!, songName: "Pigs (Three Different Ones)", artistName: "Pink Floyd", duration: 674),
//                SongsModel(albumImage: UIImage(named: "pinkfloyd_album_3")!, songName: "Sheep", artistName: "Pink Floyd", duration: 614),
//                SongsModel(albumImage: UIImage(named: "pinkfloyd_album_3")!, songName: "Pigs on the Wing", artistName: "Pink Floyd", duration: 81)
//            ])
//        ]
//    ),
//    ArtistAlbumModel(
//        artistName: "Led Zeppelin",
//        artistAlbums: [
//            AlbumModel(id: 10, image: UIImage(named: "zeppelin_album_1")!, title: "Led Zeppelin IV", artistName: "Led Zeppelin", songsList: [
//                SongsModel(albumImage: UIImage(named: "zeppelin_album_1")!, songName: "Stairway to Heaven", artistName: "Led Zeppelin", duration: 482),
//                SongsModel(albumImage: UIImage(named: "zeppelin_album_1")!, songName: "Black Dog", artistName: "Led Zeppelin", duration: 295),
//                SongsModel(albumImage: UIImage(named: "zeppelin_album_1")!, songName: "Rock and Roll", artistName: "Led Zeppelin", duration: 221),
//                SongsModel(albumImage: UIImage(named: "zeppelin_album_1")!, songName: "Going to California", artistName: "Led Zeppelin", duration: 217)
//            ]),
//            AlbumModel(id: 11, image: UIImage(named: "zeppelin_album_2")!, title: "Physical Graffiti", artistName: "Led Zeppelin", songsList: [
//                SongsModel(albumImage: UIImage(named: "zeppelin_album_2")!, songName: "Kashmir", artistName: "Led Zeppelin", duration: 517),
//                SongsModel(albumImage: UIImage(named: "zeppelin_album_2")!, songName: "In My Time of Dying", artistName: "Led Zeppelin", duration: 662),
//                SongsModel(albumImage: UIImage(named: "zeppelin_album_2")!, songName: "Houses of the Holy", artistName: "Led Zeppelin", duration: 246),
//                SongsModel(albumImage: UIImage(named: "zeppelin_album_2")!, songName: "Trampled Under Foot", artistName: "Led Zeppelin", duration: 336)
//            ]),
//            AlbumModel(id: 12, image: UIImage(named: "zeppelin_album_3")!, title: "Houses of the Holy", artistName: "Led Zeppelin", songsList: [
//                SongsModel(albumImage: UIImage(named: "zeppelin_album_3")!, songName: "The Ocean", artistName: "Led Zeppelin", duration: 267),
//                SongsModel(albumImage: UIImage(named: "zeppelin_album_3")!, songName: "No Quarter", artistName: "Led Zeppelin", duration: 421),
//                SongsModel(albumImage: UIImage(named: "zeppelin_album_3")!, songName: "Over the Hills and Far Away", artistName: "Led Zeppelin", duration: 278),
//                SongsModel(albumImage: UIImage(named: "zeppelin_album_3")!, songName: "D'yer Mak'er", artistName: "Led Zeppelin", duration: 267)
//            ])
//        ]
//    ),
//    ArtistAlbumModel(
//        artistName: "David Bowie",
//        artistAlbums: [
//            AlbumModel(id: 13, image: UIImage(named: "bowie_album_1")!, title: "The Rise and Fall of Ziggy Stardust", artistName: "David Bowie", songsList: [
//                SongsModel(albumImage: UIImage(named: "bowie_album_1")!, songName: "Starman", artistName: "David Bowie", duration: 271),
//                SongsModel(albumImage: UIImage(named: "bowie_album_1")!, songName: "Suffragette City", artistName: "David Bowie", duration: 209),
//                SongsModel(albumImage: UIImage(named: "bowie_album_1")!, songName: "Ziggy Stardust", artistName: "David Bowie", duration: 196),
//                SongsModel(albumImage: UIImage(named: "bowie_album_1")!, songName: "Rock 'n' Roll Suicide", artistName: "David Bowie", duration: 170)
//            ]),
//            AlbumModel(id: 14, image: UIImage(named: "bowie_album_2")!, title: "Heroes", artistName: "David Bowie", songsList: [
//                SongsModel(albumImage: UIImage(named: "bowie_album_2")!, songName: "Heroes", artistName: "David Bowie", duration: 372),
//                SongsModel(albumImage: UIImage(named: "bowie_album_2")!, songName: "Joe the Lion", artistName: "David Bowie", duration: 225),
//                SongsModel(albumImage: UIImage(named: "bowie_album_2")!, songName: "Sons of the Silent Age", artistName: "David Bowie", duration: 228),
//                SongsModel(albumImage: UIImage(named: "bowie_album_2")!, songName: "Blackout", artistName: "David Bowie", duration: 234)
//            ]),
//            AlbumModel(id: 15, image: UIImage(named: "bowie_album_3")!, title: "Hunky Dory", artistName: "David Bowie", songsList: [
//                SongsModel(albumImage: UIImage(named: "bowie_album_3")!, songName: "Life on Mars?", artistName: "David Bowie", duration: 242),
//                SongsModel(albumImage: UIImage(named: "bowie_album_3")!, songName: "Changes", artistName: "David Bowie", duration: 215),
//                SongsModel(albumImage: UIImage(named: "bowie_album_3")!, songName: "Oh! You Pretty Things", artistName: "David Bowie", duration: 196),
//                SongsModel(albumImage: UIImage(named: "bowie_album_3")!, songName: "Queen Bitch", artistName: "David Bowie", duration: 187)
//            ])
//        ]
//    )
//]
