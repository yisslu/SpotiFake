//
//  ArtistListBuilder.swift
//  Music
//
//  Created by Jesús Lugo Sáenz on 09/11/24.
//

import Foundation
import UIKit


enum AlbumListBuilder{
    static func showAlbumListBuilder() -> AlbumListViewController{
        let view = AlbumListViewController()
        let router = AlbumListRouter()
        let interactor = AlbumListInteractor()
        let presenter = AlbumListPresenter(view: view, router: router, interactor: interactor)
        view.presenter = presenter
        interactor.presenter = presenter
        
        return view
    }
}
