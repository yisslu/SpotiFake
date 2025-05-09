//
//  ArtistListInteractor.swift
//  Music
//
//  Created by Jesús Lugo Sáenz on 09/11/24.
//

import Foundation

class AlbumListInteractor: AlbumListInputInteractorProtocol{
    
    weak var presenter: AlbumListPresenterProtocol?
    
    func fetchAlbumList(with id: Int) {
        guard let fileURL = Bundle.main.url(forResource: "albums", withExtension: "json"), let albumData = try? Data(contentsOf: fileURL), let albumsList = try? JSONDecoder().decode([ArtistAlbumEntity].self, from: albumData), let album = albumsList.first(where: { $0.id == id}) else {
            assertionFailure("Cannot find albums.json file")
            return
        }
        
        presenter?.albumListDidFetch(albumList: album)
    }
}
