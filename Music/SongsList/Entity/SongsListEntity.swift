//
//  SongsListEntity.swift
//  Music
//
//  Created by Jesús Lugo Sáenz on 23/11/24.
//


class SongsListEntity {    
    let songsList: [SongsListModel] = [
        // The Beatles
        SongsListModel(
            albumName: "Abbey Road", albumImage: .beatlesAbbeyRoad,
            songsList: [
                SongsModel(songName: "Come Together", duration: 259),
                SongsModel(songName: "Something", duration: 183),
                SongsModel(songName: "Maxwell's Silver Hammer", duration: 207),
                SongsModel(songName: "Octopus's Garden", duration: 170)
            ]
        ),
        SongsListModel(
            albumName: "Let It Be", albumImage: .letItBeBeatles,
            songsList: [
                SongsModel(songName: "Let It Be", duration: 243),
                SongsModel(songName: "Across the Universe", duration: 221),
                SongsModel(songName: "I Me Mine", duration: 138),
                SongsModel(songName: "Get Back", duration: 186)
            ]
        ),
        SongsListModel(
            albumName: "Revolver", albumImage: .revolverBeatles,
            songsList: [
                SongsModel(songName: "Eleanor Rigby", duration: 138),
                SongsModel(songName: "Yellow Submarine", duration: 162),
                SongsModel(songName: "Good Day Sunshine", duration: 133),
                SongsModel(songName: "For No One", duration: 120)
            ]
        ),
        // Queen
        SongsListModel(
            albumName: "A Night at the Opera", albumImage: .queenAlbum1,
            songsList: [
                SongsModel(songName: "Bohemian Rhapsody", duration: 354),
                SongsModel(songName: "You're My Best Friend", duration: 170),
                SongsModel(songName: "Love of My Life", duration: 210),
                SongsModel(songName: "'39", duration: 204)
            ]
        ),
        SongsListModel(
            albumName: "News of the World", albumImage: .queenAlbum2,
            songsList: [
                SongsModel(songName: "We Will Rock You", duration: 122),
                SongsModel(songName: "We Are the Champions", duration: 179),
                SongsModel(songName: "Spread Your Wings", duration: 276),
                SongsModel(songName: "It's Late", duration: 447)
            ]
        ),
        SongsListModel(
            albumName: "The Game", albumImage: .queenAlbum3,
            songsList: [
                SongsModel(songName: "Another One Bites the Dust", duration: 217),
                SongsModel(songName: "Crazy Little Thing Called Love", duration: 161),
                SongsModel(songName: "Save Me", duration: 223),
                SongsModel(songName: "Play the Game", duration: 204)
            ]
        ),
        // Pink Floyd
        SongsListModel(
            albumName: "The Dark Side of the Moon", albumImage: .pinkfloydAlbum1,
            songsList: [
                SongsModel(songName: "Money", duration: 382),
                SongsModel(songName: "Time", duration: 413),
                SongsModel(songName: "Us and Them", duration: 470),
                SongsModel(songName: "Brain Damage", duration: 228)
            ]
        ),
        SongsListModel(
            albumName: "Wish You Were Here", albumImage: .pinkfloydAlbum2,
            songsList: [
                SongsModel(songName: "Shine On You Crazy Diamond", duration: 810),
                SongsModel(songName: "Wish You Were Here", duration: 335),
                SongsModel(songName: "Welcome to the Machine", duration: 437),
                SongsModel(songName: "Have a Cigar", duration: 309)
            ]
        ),
        SongsListModel(
            albumName: "Animals", albumImage: .pinkfloydAlbum3,
            songsList: [
                SongsModel(songName: "Dogs", duration: 1024),
                SongsModel(songName: "Pigs (Three Different Ones)", duration: 674),
                SongsModel(songName: "Sheep", duration: 614),
                SongsModel(songName: "Pigs on the Wing", duration: 81)
            ]
        ),
        // Led Zeppelin
        SongsListModel(
            albumName: "Led Zeppelin IV", albumImage: .zeppelinAlbum1,
            songsList: [
                SongsModel(songName: "Stairway to Heaven", duration: 482),
                SongsModel(songName: "Black Dog", duration: 295),
                SongsModel(songName: "Rock and Roll", duration: 221),
                SongsModel(songName: "Going to California", duration: 217)
            ]
        ),
        SongsListModel(
            albumName: "Physical Graffiti", albumImage: .zeppelinAlbum2,
            songsList: [
                SongsModel(songName: "Kashmir", duration: 517),
                SongsModel(songName: "In My Time of Dying", duration: 662),
                SongsModel(songName: "Houses of the Holy", duration: 246),
                SongsModel(songName: "Trampled Under Foot", duration: 336)
            ]
        ),
        SongsListModel(
            albumName: "Houses of the Holy", albumImage: .zeppelinAlbum3,
            songsList: [
                SongsModel(songName: "The Ocean", duration: 267),
                SongsModel(songName: "No Quarter", duration: 421),
                SongsModel(songName: "Over the Hills and Far Away", duration: 278),
                SongsModel(songName: "D'yer Mak'er", duration: 267)
            ]
        ),
        // David Bowie
        SongsListModel(
            albumName: "The Rise and Fall of Ziggy Stardust", albumImage: .bowieAlbum1,
            songsList: [
                SongsModel(songName: "Starman", duration: 271),
                SongsModel(songName: "Suffragette City", duration: 209),
                SongsModel(songName: "Ziggy Stardust", duration: 196),
                SongsModel(songName: "Rock 'n' Roll Suicide", duration: 170)
            ]
        ),
        SongsListModel(
            albumName: "Heroes", albumImage: .bowieAlbum2,
            songsList: [
                SongsModel(songName: "Heroes", duration: 372),
                SongsModel(songName: "Joe the Lion", duration: 225),
                SongsModel(songName: "Sons of the Silent Age", duration: 228),
                SongsModel(songName: "Blackout", duration: 234)
            ]
        ),
        SongsListModel(
            albumName: "Hunky Dory", albumImage: .bowieAlbum3,
            songsList: [
                SongsModel(songName: "Life on Mars?", duration: 242),
                SongsModel(songName: "Changes", duration: 215),
                SongsModel(songName: "Oh! You Pretty Things", duration: 196),
                SongsModel(songName: "Queen Bitch", duration: 187)
            ]
        )
    ]
}
