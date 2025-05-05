//
//  ArtistListInteractor.swift
//  Music
//
//  Created by Jesús Lugo Sáenz on 09/11/24.
//


class SongsListInteractor: SongsListInputInteractorProtocol{
    
    weak var presenter: SongsListOutputInteractorProtocol?
    
    func fetchSongsList(with name: String) {
        let songsList = SongsListEntity().songsList
        
        
        for songs in songsList {
            if songs.albumName == name {
                presenter?.songsListDidFetch(songsList: songs.songsList, image: songs.albumImage)
                break
            }
        }
    }
}
