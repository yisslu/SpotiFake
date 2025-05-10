//
//  ArtistListBuilder.swift
//  Music
//
//  Created by Jesús Lugo Sáenz on 09/11/24.
//

import Foundation
import UIKit


enum SongsListBuilder{
    static func showSongsListBuilder(albumId: Int) -> SongsListViewController{
        let view = SongsListViewController()
        let router = SongsListRouter()
        let interactor = SongsListInteractor()
        let mapper = MapperSongsModel()
        let presenter = SongsListPresenter(view: view, router: router, interactor: interactor, albumId: albumId, mapper: mapper)
        view.presenter = presenter
        interactor.presenter = presenter
        
        return view
    }
}
