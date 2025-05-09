//
//  ArtistListBuilder.swift
//  Music
//
//  Created by Jesús Lugo Sáenz on 09/11/24.
//

import Foundation
import UIKit


enum ArtistListBuilder{
    static func showArtistListBuilder() -> UIViewController{
        let router = ArtistListRouter()
        let interactor = ArtistListInteractor()
        let mapper = MapperArtistList()
        let presenter = ArtistListPresenter(router: router, interactor: interactor, mapper: mapper)
        let view = ArtistListViewController(presenter: presenter)
        presenter.view = view
        return view
    }
}
