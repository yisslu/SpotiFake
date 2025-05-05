//
//  ArtistListInteractor.swift
//  Music
//
//  Created by Jesús Lugo Sáenz on 09/11/24.
//


class ArtistListInteractor: ArtistListInputInteractorProtocol{
    weak var presenter: ArtistListOutputInteractorProtocol?
    
    func fetchArtistList (){
        let artistList = ArtistListEntity().artistModel.artistsNames
        
        presenter?.artistListDidFetch(artistList: artistList)
    }
}
