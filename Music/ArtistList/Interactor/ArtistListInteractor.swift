//
//  ArtistListInteractor.swift
//  Music
//
//  Created by Jesús Lugo Sáenz on 09/11/24.
//

import Foundation


class ArtistListInteractor: ArtistListInputInteractorProtocol{
    func fetchArtistList () -> [ArtistListEntity]{
        guard let fileURL = Bundle.main.url(forResource: "Artist_list", withExtension: "json"), let artistData = try? Data(contentsOf: fileURL), let artistList = try? JSONDecoder().decode([ArtistListEntity].self, from: artistData) else {
            assertionFailure("Cannot find Artist-list.json")
            return [ArtistListEntity.init(id: 0, name: "")]
        }
        return artistList
    }
}
