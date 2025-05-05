//
//  ArtistListInteractor.swift
//  Music
//
//  Created by Jesús Lugo Sáenz on 09/11/24.
//


class AlbumListInteractor: AlbumListInputInteractorProtocol{
    
    weak var presenter: AlbumListOutputInteractorProtocol?
    
    func fetchAlbumList(with name: String) {
        let albumsList = AlbumListEntity().artistAlbumList
        
        for artist in albumsList {
            if artist.artistName == name{
                presenter?.albumListDidFetch(albumList: artist.albums)
                break
            }
        }
    }
}
