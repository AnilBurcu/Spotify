//
//  NewReleasesResponse.swift
//  Spotify
//
//  Created by Anıl Bürcü on 7.03.2023.
//

import Foundation

struct NewReleasesResponse: Codable {
    let albums: AlbumsResponse
}

struct AlbumsResponse:Codable {
    let items: [Album]
}

struct Album:Codable {
    let album_type:String
    let available_markets:[String]
    let id:String
    var images:[APIImage]
    let name:String
    let release_date:String
    let total_tracks:Int
    let artists:[Artist]
}



/*
 {
 albums =     {
 href = "https://api.spotify.com/v1/browse/new-releases?country=TR&locale=tr-TR%2Ctr%3Bq%3D0.9&offset=0&limit=1";
 items =         (
 {
 "album_type" = album;
 artists =                 (
 {
 "external_urls" =                         {
 spotify = "https://open.spotify.com/artist/2wY79sveU1sp5g7SokKOiI";
 };
 href = "https://api.spotify.com/v1/artists/2wY79sveU1sp5g7SokKOiI";
 id = 2wY79sveU1sp5g7SokKOiI;
 name = "Sam Smith";
 type = artist;
 uri = "spotify:artist:2wY79sveU1sp5g7SokKOiI";
 }
 );
 "available_markets" =                 (
 
 TZ,
 UA,
 ZW
 );
 "external_urls" =                 {
 spotify = "https://open.spotify.com/album/3Uq1jNGnD412ZvCb6j2DKV";
 };
 href = "https://api.spotify.com/v1/albums/3Uq1jNGnD412ZvCb6j2DKV";
 id = 3Uq1jNGnD412ZvCb6j2DKV;
 images =                 (
 {
 height = 640;
 url = "https://i.scdn.co/image/ab67616d0000b273fc3ff54493fcc890bcaa036c";
 width = 640;
 },
 {
 height = 300;
 url = "https://i.scdn.co/image/ab67616d00001e02fc3ff54493fcc890bcaa036c";
 width = 300;
 },
 {
 height = 64;
 url = "https://i.scdn.co/image/ab67616d00004851fc3ff54493fcc890bcaa036c";
 width = 64;
 }
 );
 name = Gloria;
 "release_date" = "2023-01-27";
 "release_date_precision" = day;
 "total_tracks" = 13;
 type = album;
 uri = "spotify:album:3Uq1jNGnD412ZvCb6j2DKV";
 }
 );
 limit = 1;
 next = "https://api.spotify.com/v1/browse/new-releases?country=TR&locale=tr-TR%2Ctr%3Bq%3D0.9&offset=1&limit=1";
 offset = 0;
 previous = "<null>";
 total = 100;
 };
 }
 */
