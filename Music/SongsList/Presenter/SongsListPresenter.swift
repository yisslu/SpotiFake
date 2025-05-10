//
//  ArtistListPresenter.swift
//  Music
//
//  Created by Jesús Lugo Sáenz on 09/11/24.
//

import UIKit

class SongsListPresenter: SongsListPresenterProtocol{
 
    weak var view: SongsListViewProtocol?
    var router: SongsListRouterProtocol
    var interactor: SongsListInputInteractorProtocol
    var albumId: Int
    var mapper: MapperSongsModel
    
    init(view: SongsListViewProtocol, router: SongsListRouterProtocol, interactor: SongsListInputInteractorProtocol, albumId: Int, mapper: MapperSongsModel) {
        self.view = view
        self.router = router
        self.interactor = interactor
        self.albumId = albumId
        self.mapper = mapper
    }
    
    func getSongsList() {
        interactor.fetchSongsList(with: albumId)
    }
    
    func sendSongName(with songId: Int, navigationController: UINavigationController) {
        router.sendInfoToReproductorView(songId: songId, navigationController: navigationController)
    }    
}

extension SongsListPresenter {
    func songsListDidFetch(album: SongsListEntity) {
        let mappedAlbum = mapper.map(album: album)
        view?.updateView(album: mappedAlbum)
    }
}
