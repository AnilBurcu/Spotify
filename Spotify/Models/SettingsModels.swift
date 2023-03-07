//
//  SettingsModels.swift
//  Spotify
//
//  Created by Anıl Bürcü on 7.03.2023.
//

import Foundation

struct Section {
    let title:String
    let options:[Option]
}

struct Option {
    let title:String
    let handler: ()->Void
}
