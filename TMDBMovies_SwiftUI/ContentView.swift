//
//  ContentView.swift
//  TMDBMovies_SwiftUI
//
//  Created by Garika Sreekanth on 16/01/21.
//  Copyright © 2021 Garika Sreekanth. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            
            TopRatedMovieListView()
                .tabItem {
                    VStack {
                        Image(systemName: "tv")
                        Text("TopRatedMovies")
                    }
            }
            .tag(0)
            
            UpComingMovieListView()
                .tabItem {
                    VStack {
                        Image(systemName: "tv")
                        Text("UpComingMovies")
                    }
            }
            .tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

