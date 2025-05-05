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
    
    init(view: SongsListViewProtocol, router: SongsListRouterProtocol, interactor: SongsListInputInteractorProtocol) {
        self.view = view
        self.router = router
        self.interactor = interactor
    }
    
    func getSongsList(with name: String) {
        interactor.fetchSongsList(with: name)
    }
    
    func sendSongName(with name: String, navigationController: UINavigationController) {
        router.sendInfoToReproductorView(name: name, navigationController: navigationController)
    }
    
    func transformSecondsToMinutesFor(this time: Int) -> String{
        let minutes = (time % 3600) / 60
        let seconds = (time % 3600) % 60
        return String(format: "%02d:%02d", minutes, seconds)
    }
    
}

extension SongsListPresenter: SongsListOutputInteractorProtocol{
    func songsListDidFetch(songsList: [SongsModel], image: UIImage) {
        view?.updateView(songsList: songsList, image: image)
    }
}
