//
//  ArtistListProtocols.swift
//  Music
//
//  Created by Jesús Lugo Sáenz on 09/11/24.
//


import Foundation
import UIKit

protocol ArtistListPresenterProtocol: AnyObject {
    var view: ArtistListViewProtocol? {get set}
    var router: ArtistListRouterProtocol {get set}
    var interactor: ArtistListInputInteractorProtocol {get set}
    
    func getArtistList()
    func sendArtistName(with name: String, navigationController: UINavigationController)
}

protocol ArtistListViewProtocol: AnyObject{
    var presenter: ArtistListPresenterProtocol? {get set}
    func updateView(artistList: [String])
}

protocol ArtistListInputInteractorProtocol: AnyObject{
    var presenter: ArtistListOutputInteractorProtocol? {get set}
    func fetchArtistList()
}

protocol ArtistListOutputInteractorProtocol: AnyObject{
    
    func artistListDidFetch(artistList: [String])
}

protocol ArtistListRouterProtocol: AnyObject{
    func sendInfoToAlbumView(name: String, navigationController: UINavigationController)
}
