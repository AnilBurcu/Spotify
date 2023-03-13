//
//  UserProfile.swift
//  Spotify
//
//  Created by Anıl Bürcü on 6.03.2023.
//

import Foundation


struct UserProfile: Codable{
    let country: String
    let display_name: String
    let email: String
    let explicit_content: [String: Bool]
    let external_urls: [String: String]
    let id: String
    let product: String
    let images: [APIImage]
 
}


/*
 
 
 country = TR;
 "display_name" = "An\U0131l";
 email = "anlbrc@icloud.com";
 "explicit_content" =     {
     "filter_enabled" = 0;
     "filter_locked" = 0;
 };
 "external_urls" =     {
     spotify = "https://open.spotify.com/user/35dbkawcc1pwsdammxpeifh7h";
 };
 followers =     {
     href = "<null>";
     total = 0;
 };
 href = "https://api.spotify.com/v1/users/35dbkawcc1pwsdammxpeifh7h";
 id = 35dbkawcc1pwsdammxpeifh7h;
 images =     (
             {
         height = "<null>";
         url = "https://i.scdn.co/image/ab6775700000ee855b5a190e0dc12343fd513cdc";
         width = "<null>";
     }
 );
 product = free;
 type = user;
 uri = "spotify:user:35dbkawcc1pwsdammxpeifh7h";
}
 
 */



