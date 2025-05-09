//
//  ArtistListPresenter.swift
//  Music
//
//  Created by Jesús Lugo Sáenz on 09/11/24.
//

import UIKit

class ArtistListPresenter: ArtistListPresenterProtocol{
    var view: ArtistListViewProtocol?
    var router: ArtistListRouterProtocol
    var interactor: ArtistListInputInteractorProtocol
    var mapper: MapperArtistList
    private var artistList: [ArtistListEntity] = []
    
    init(router: ArtistListRouterProtocol, interactor: ArtistListInputInteractorProtocol, mapper: MapperArtistList) {
        self.router = router
        self.interactor = interactor
        self.mapper = mapper
    }
    
    func getArtistList(){
        artistList = interactor.fetchArtistList()
        let artists = mapper.map(this: artistList)
        view?.updateView(artistList: artists)
    }
    
    func sendArtistName(with id: Int, navigationController: UINavigationController) {
        let id = artistList[id].id
        router.sendInfoToAlbumView(id: id, navigationController: navigationController)
    }
    
}
