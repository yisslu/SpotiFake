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
    
    init(view: AlbumListViewProtocol, router: AlbumListRouterProtocol, interactor: AlbumListInputInteractorProtocol) {
        self.view = view
        self.router = router
        self.interactor = interactor
    }
    
    func getAlbumList(with name: String){
        interactor.fetchAlbumList(with: name)
    }
    
    func sendAlbumName(whith name: String, navigationController: UINavigationController) {
        router.sendInfoToSongsListView(albumName: name, navigationController: navigationController)
    }
}

extension AlbumListPresenter: AlbumListOutputInteractorProtocol{
    
    func albumListDidFetch(albumList: [AlbumModel]) {
        view?.updateView(albumList: albumList)
    }
    
    
}
