//
//  MapperSongsModel.swift
//  Music
//
//  Created by Jesús Lugo Sáenz on 09/05/25.
//

import Foundation

struct MapperSongsModel {
    
    func map(album: SongsListEntity) -> SongsListModel {
        let transformDuration: (Int) -> String = { time in
            let minutes = (time % 3600) / 60
            let seconds = (time % 3600) % 60
            return String(format: "%02d:%02d", minutes, seconds)
        }

        let songs = album.songs.map { songEntity in
            Song(
                songName: songEntity.songName,
                duration: transformDuration(songEntity.duration)
            )
        }

        return SongsListModel(
            albumName: album.albumName,
            albumImage: album.albumImage,
            songs: songs
        )
    }
}
