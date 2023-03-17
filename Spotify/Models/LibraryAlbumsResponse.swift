//
//  LibraryAlbumsResponse.swift
//  Spotify
//
//  Created by Anıl Bürcü on 17.03.2023.
//

import Foundation

struct LibraryAlbumsResponse:Codable {
    let items: [SavedAlbum]
}

struct SavedAlbum:Codable {
    let added_at: String
    let album:Album
}
