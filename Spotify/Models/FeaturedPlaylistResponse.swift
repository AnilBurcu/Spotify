//
//  FeaturedPlaylistResponse.swift
//  Spotify
//
//  Created by Anıl Bürcü on 7.03.2023.
//

import Foundation

struct FeaturedPlaylistsResponse: Codable {
    let playlists: PlaylistResponse
}

struct CategoryPlaylistsResponse: Codable {
    let playlists: PlaylistResponse
}

struct PlaylistResponse: Codable {
    let items: [Playlist]
}

struct User: Codable {
    let display_name: String
    let external_urls: [String: String]
    let id: String
}

/*{
    message = "Hafta ortas\U0131 \U015fark\U0131lar\U0131";
    playlists =     {
        href = "https://api.spotify.com/v1/browse/featured-playlists?country=TR&timestamp=2023-03-07T14%3A49%3A31&offset=0&limit=20";
        items =         (
            {
                collaborative = 0;
                description = "D vitaminin.";
                "external_urls" =                 {
                    spotify = "https://open.spotify.com/playlist/37i9dQZF1DWVN3NeXpA0vD";
                };
                href = "https://api.spotify.com/v1/playlists/37i9dQZF1DWVN3NeXpA0vD";
                id = 37i9dQZF1DWVN3NeXpA0vD;
                images =                 (
                    {
                        height = "<null>";
                        url = "https://i.scdn.co/image/ab67706f00000003cd32ffb1154cd2f7448f7d25";
                        width = "<null>";
                    }
                );
                name = "G\U00fcnl\U00fck G\U00fcne\U015flik";
                owner =                 {
                    "display_name" = Spotify;
                    "external_urls" =                     {
                        spotify = "https://open.spotify.com/user/spotify";
                    };
                    href = "https://api.spotify.com/v1/users/spotify";
                    id = spotify;
                    type = user;
                    uri = "spotify:user:spotify";
                };
                "primary_color" = "<null>";
                public = "<null>";
                "snapshot_id" = MTY3MzYwMzExMywwMDAwMDAwMDIxMWY2OGUyZDdkNjgyMDRmYWYzZjM0ZDUzMDdjOWIy;
                tracks =                 {
                    href = "https://api.spotify.com/v1/playlists/37i9dQZF1DWVN3NeXpA0vD/tracks";
                    total = 100;
                };
                type = playlist;
                uri = "spotify:playlist:37i9dQZF1DWVN3NeXpA0vD";
            },
            {
                collaborative = 0;
                description = "Arkada \U00e7almal\U0131k T\U00fcrk\U00e7e \U015fark\U0131lar.";
                "external_urls" =                 {
                    spotify = "https://open.spotify.com/playlist/37i9dQZF1DWVHdYf9Bwcjq";
                };
                href = "https://api.spotify.com/v1/playlists/37i9dQZF1DWVHdYf9Bwcjq";
                id = 37i9dQZF1DWVHdYf9Bwcjq;
                images =                 (
                    {
                        height = "<null>";
                        url = "https://i.scdn.co/image/ab67706f00000003f14d57d5c34d57a9ed4e5ad8";
                        width = "<null>";
                    }
                );
                name = "Hafif M\U00fczik";
                owner =                 {
                    "display_name" = Spotify;
                    "external_urls" =                     {
                        spotify = "https://open.spotify.com/user/spotify";
                    };
                    href = "https://api.spotify.com/v1/users/spotify";
                    id = spotify;
                    type = user;
                    uri = "spotify:user:spotify";
                };
                "primary_color" = "<null>";
                public = "<null>";
                "snapshot_id" = MTY3MzAwNzI1NCwwMDAwMDAwMDg1MTliNjQzNGVkNDY3MDc4YmU4Y2M5NGY2NjdlZjE2;
                tracks =                 {
                    href = "https://api.spotify.com/v1/playlists/37i9dQZF1DWVHdYf9Bwcjq/tracks";
                    total = 50;
                };
                type = playlist;
                uri = "spotify:playlist:37i9dQZF1DWVHdYf9Bwcjq";
            },
            {
                collaborative = 0;
                description = "Dinlemekten vazge\U00e7emediklerin ve en yeni hitler. Kapak: Semicenk x Reynmen";
                "external_urls" =                 {
                    spotify = "https://open.spotify.com/playlist/37i9dQZF1DX0FGW2dUyDef";
                };
                href = "https://api.spotify.com/v1/playlists/37i9dQZF1DX0FGW2dUyDef";
                id = 37i9dQZF1DX0FGW2dUyDef;
                images =                 (
                    {
                        height = "<null>";
                        url = "https://i.scdn.co/image/ab67706f0000000397db26a8062ff318a638554d";
                        width = "<null>";
                    }
                );
                name = "Hot Hits T\U00fcrkiye";
                owner =                 {
                    "display_name" = Spotify;
                    "external_urls" =                     {
                        spotify = "https://open.spotify.com/user/spotify";
                    };
                    href = "https://api.spotify.com/v1/users/spotify";
                    id = spotify;
                    type = user;
                    uri = "spotify:user:spotify";
                };
                "primary_color" = "<null>";
                public = "<null>";
                "snapshot_id" = MTY3ODA5MTE0MCwwMDAwMDAwMDBmYjY3NGEzYThhMzdlNjA3OWQ2ODI4ODZiNGM1MDIw;
                tracks =                 {
                    href = "https://api.spotify.com/v1/playlists/37i9dQZF1DX0FGW2dUyDef/tracks";
                    total = 50;
                };
                type = playlist;
                uri = "spotify:playlist:37i9dQZF1DX0FGW2dUyDef";
            },
            {
                collaborative = 0;
                description = "internette olan biten\Ud83d\Udcf1";
                "external_urls" =                 {
                    spotify = "https://open.spotify.com/playlist/37i9dQZF1DWYs8YYEWLlaB";
                };
                href = "https://api.spotify.com/v1/playlists/37i9dQZF1DWYs8YYEWLlaB";
                id = 37i9dQZF1DWYs8YYEWLlaB;
                images =                 (
                    {
                        height = "<null>";
                        url = "https://i.scdn.co/image/ab67706f00000003cc0636b16f853a0dbc03bfad";
                        width = "<null>";
                    }
                );
                name = trend;
                owner =                 {
                    "display_name" = Spotify;
                    "external_urls" =                     {
                        spotify = "https://open.spotify.com/user/spotify";
                    };
                    href = "https://api.spotify.com/v1/users/spotify";
                    id = spotify;
                    type = user;
                    uri = "spotify:user:spotify";
                };
                "primary_color" = "<null>";
                public = "<null>";
                "snapshot_id" = MTY3ODEwODUyNiwwMDAwMDAwMDBkODY0MzFjYzY0NTE3ODE5N2ZlZjY0ZGEwYTU0OTZk;
                tracks =                 {
                    href = "https://api.spotify.com/v1/playlists/37i9dQZF1DWYs8YYEWLlaB/tracks";
                    total = 60;
                };
                type = playlist;
                uri = "spotify:playlist:37i9dQZF1DWYs8YYEWLlaB";
            },
            {
                collaborative = 0;
                description = "Son y\U0131llar\U0131n olay yaratan T\U00fcrk\U00e7e \U015fark\U0131lar\U0131.";
                "external_urls" =                 {
                    spotify = "https://open.spotify.com/playlist/37i9dQZF1DWXoHqNlfcLJb";
                };
                href = "https://api.spotify.com/v1/playlists/37i9dQZF1DWXoHqNlfcLJb";
                id = 37i9dQZF1DWXoHqNlfcLJb;
                images =                 (
                    {
                        height = "<null>";
                        url = "https://i.scdn.co/image/ab67706f00000003127e9c23180f0846552821a2";
                        width = "<null>";
                    }
                );
                name = OLAY;
                owner =                 {
                    "display_name" = Spotify;
                    "external_urls" =                     {
                        spotify = "https://open.spotify.com/user/spotify";
                    };
                    href = "https://api.spotify.com/v1/users/spotify";
                    id = spotify;
                    type = user;
                    uri = "spotify:user:spotify";
                };
                "primary_color" = "<null>";
                public = "<null>";
                "snapshot_id" = MTY3Njg4MTg1NiwwMDAwMDAwMGRmNzE4NDhjYzBjNjhiNGE1MjY1ZjkwYzJlMDI0Zjhj;
                tracks =                 {
                    href = "https://api.spotify.com/v1/playlists/37i9dQZF1DWXoHqNlfcLJb/tracks";
                    total = 50;
                };
                type = playlist;
                uri = "spotify:playlist:37i9dQZF1DWXoHqNlfcLJb";
            },
            {
                collaborative = 0;
                description = "En sevdi\U011fin yeni nesil meyhane \U015fark\U0131lar\U0131.";
                "external_urls" =                 {
                    spotify = "https://open.spotify.com/playlist/37i9dQZF1DWWISEYemjDXp";
                };
                href = "https://api.spotify.com/v1/playlists/37i9dQZF1DWWISEYemjDXp";
                id = 37i9dQZF1DWWISEYemjDXp;
                images =                 (
                    {
                        height = "<null>";
                        url = "https://i.scdn.co/image/ab67706f000000032a66f07450f6b4f9f8c60d10";
                        width = "<null>";
                    }
                );
                name = "Eller Havaya";
                owner =                 {
                    "display_name" = Spotify;
                    "external_urls" =                     {
                        spotify = "https://open.spotify.com/user/spotify";
                    };
                    href = "https://api.spotify.com/v1/users/spotify";
                    id = spotify;
                    type = user;
                    uri = "spotify:user:spotify";
                };
                "primary_color" = "<null>";
                public = "<null>";
                "snapshot_id" = MTY3MjU4MTAxMiwwMDAwMDAwMDgwNmRkY2M2MmNjN2M0N2E0MDgyYmUyZTE0YjFjNDkw;
                tracks =                 {
                    href = "https://api.spotify.com/v1/playlists/37i9dQZF1DWWISEYemjDXp/tracks";
                    total = 150;
                };
                type = playlist;
                uri = "spotify:playlist:37i9dQZF1DWWISEYemjDXp";
            },
            {
                collaborative = 0;
                description = "En iyi yerli hip hop \U00e7\U0131k\U0131\U015flar\U0131. Kapak: Critical x Heijan";
                "external_urls" =                 {
                    spotify = "https://open.spotify.com/playlist/37i9dQZF1DWW5N73hRn6CE";
                };
                href = "https://api.spotify.com/v1/playlists/37i9dQZF1DWW5N73hRn6CE";
                id = 37i9dQZF1DWW5N73hRn6CE;
                images =                 (
                    {
                        height = "<null>";
                        url = "https://i.scdn.co/image/ab67706f00000003d64d37bfb6c1213ea6505d39";
                        width = "<null>";
                    }
                );
                name = "0 Km";
                owner =                 {
                    "display_name" = Spotify;
                    "external_urls" =                     {
                        spotify = "https://open.spotify.com/user/spotify";
                    };
                    href = "https://api.spotify.com/v1/users/spotify";
                    id = spotify;
                    type = user;
                    uri = "spotify:user:spotify";
                };
                "primary_color" = "<null>";
                public = "<null>";
                "snapshot_id" = MTY3Nzc5MDgwMCwwMDAwMDAwMGZiZjRhOWRiOTE2OTJhZTNhYjIyMDc0NDBiYTA0MTE0;
                tracks =                 {
                    href = "https://api.spotify.com/v1/playlists/37i9dQZF1DWW5N73hRn6CE/tracks";
                    total = 75;
                };
                type = playlist;
                uri = "spotify:playlist:37i9dQZF1DWW5N73hRn6CE";
            },
            {
                collaborative = 0;
                description = "Usta ozanlardan modern yorumlara, her y\U00f6reden t\U00fcrk\U00fcler.";
                "external_urls" =                 {
                    spotify = "https://open.spotify.com/playlist/37i9dQZF1DWTahAIWknTP8";
                };
                href = "https://api.spotify.com/v1/playlists/37i9dQZF1DWTahAIWknTP8";
                id = 37i9dQZF1DWTahAIWknTP8;
                images =                 (
                    {
                        height = "<null>";
                        url = "https://i.scdn.co/image/ab67706f0000000393f921f4877da8e7fe62c9ee";
                        width = "<null>";
                    }
                );
                name = Mozaik;
                owner =                 {
                    "display_name" = Spotify;
                    "external_urls" =                     {
                        spotify = "https://open.spotify.com/user/spotify";
                    };
                    href = "https://api.spotify.com/v1/users/spotify";
                    id = spotify;
                    type = user;
                    uri = "spotify:user:spotify";
                };
                "primary_color" = "<null>";
                public = "<null>";
                "snapshot_id" = MTY3NjU4MTIwMCwwMDAwMDAwMDU2M2FhYTM1MmU0YWRjZjRhZDgxYWI0YTE0MjM0NmQy;
                tracks =                 {
                    href = "https://api.spotify.com/v1/playlists/37i9dQZF1DWTahAIWknTP8/tracks";
                    total = 75;
                };
                type = playlist;
                uri = "spotify:playlist:37i9dQZF1DWTahAIWknTP8";
            },
            {
                collaborative = 0;
                description = "Yerli popta yeni ke\U015fifler. Kapak: Melda G\U00fcrbey";
                "external_urls" =                 {
                    spotify = "https://open.spotify.com/playlist/37i9dQZF1DX9G2MXp8YYmm";
                };
                href = "https://api.spotify.com/v1/playlists/37i9dQZF1DX9G2MXp8YYmm";
                id = 37i9dQZF1DX9G2MXp8YYmm;
                images =                 (
                    {
                        height = "<null>";
                        url = "https://i.scdn.co/image/ab67706f00000003989aae495092e8bd63783395";
                        width = "<null>";
                    }
                );
                name = Taze;
                owner =                 {
                    "display_name" = Spotify;
                    "external_urls" =                     {
                        spotify = "https://open.spotify.com/user/spotify";
                    };
                    href = "https://api.spotify.com/v1/users/spotify";
                    id = spotify;
                    type = user;
                    uri = "spotify:user:spotify";
                };
                "primary_color" = "<null>";
                public = "<null>";
                "snapshot_id" = MTY3NzgyNjk1MSwwMDAwMDAwMGY3NDhhNmNhYjgwYTk2MTYyZDg0OTE2ZmE5MDQ2MmUx;
                tracks =                 {
                    href = "https://api.spotify.com/v1/playlists/37i9dQZF1DX9G2MXp8YYmm/tracks";
                    total = 50;
                };
                type = playlist;
                uri = "spotify:playlist:37i9dQZF1DX9G2MXp8YYmm";
            }
        );
        limit = 20;
        next = "<null>";
        offset = 0;
        previous = "<null>";
        total = 9;
    };
 }
 */
