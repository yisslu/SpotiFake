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
        let view = ArtistListViewController()
        let router = ArtistListRouter()
        let interactor = ArtistListInteractor()
        let presenter = ArtistListPresenter(view: view, router: router, interactor: interactor)
        view.presenter = presenter
        interactor.presenter = presenter
        
        return view
    }
}
