//
//  ArtistListPresenter.swift
//  Music
//
//  Created by Jesús Lugo Sáenz on 09/11/24.
//

import UIKit

class AlbumListPresenter: AlbumListPresenterProtocol{
    
    
    
    weak var view: AlbumListViewProtocol?
    var router: AlbumListRouterProtocol
    var interactor: AlbumListInputInteractorProtocol
    var artistId: Int
    var albumList = ArtistAlbumEntity()
    
    init(view: AlbumListViewProtocol, router: AlbumListRouterProtocol, interactor: AlbumListInputInteractorProtocol, artistId: Int) {
        self.view = view
        self.router = router
        self.interactor = interactor
        self.artistId = artistId
    }
    
    func getAlbumList() {
        interactor.fetchAlbumList(with: artistId)
    }
    
    func sendAlbumName(whith id: Int, navigationController: UINavigationController) {
        let albumId = albumList.albums[id].id
        router.showAlbums(with: albumId, navigationController: navigationController)
    }
}

extension AlbumListPresenter {
    
    func albumListDidFetch(albumList: ArtistAlbumEntity) {
        self.albumList = albumList
        view?.updateView(albumList: albumList)
    }
    
    
}
