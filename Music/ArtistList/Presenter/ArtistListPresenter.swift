//
//  ArtistListPresenter.swift
//  Music
//
//  Created by Jesús Lugo Sáenz on 09/11/24.
//

import UIKit

class ArtistListPresenter: ArtistListPresenterProtocol{
    weak var view: ArtistListViewProtocol?
    var router: ArtistListRouterProtocol
    var interactor: ArtistListInputInteractorProtocol
    
    init(view: ArtistListViewProtocol, router: ArtistListRouterProtocol, interactor: ArtistListInputInteractorProtocol) {
        self.view = view
        self.router = router
        self.interactor = interactor
    }
    
    func getArtistList(){
        interactor.fetchArtistList()
    }
    
    func sendArtistName(with name: String, navigationController: UINavigationController) {
        router.sendInfoToAlbumView(name: name, navigationController: navigationController)
    }
    
}

extension ArtistListPresenter: ArtistListOutputInteractorProtocol{
    
    func artistListDidFetch(artistList: [String]) {
        view?.updateView(artistList: artistList)
    }
    
    
}
