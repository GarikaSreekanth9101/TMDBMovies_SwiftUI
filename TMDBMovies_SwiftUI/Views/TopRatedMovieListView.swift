//
//  TopRatedMovieListView.swift
//  TMDBMovies_SwiftUI
//
//  Created by Garika Sreekanth on 17/01/21.
//  Copyright © 2021 Garika Sreekanth. All rights reserved.
//

import SwiftUI

struct TopRatedMovieListView: View {
    
    @ObservedObject private var topRatedState = MovieListState()
    
    var body: some View {
        NavigationView {
            List {
                
                Group {
                    if topRatedState.movies != nil {
                        MovieBackdropCarouselView(title: "Top Rated", movies: topRatedState.movies!)
                        
                    } else {
                        LoadingView(isLoading: self.topRatedState.isLoading, error: self.topRatedState.error) {
                            self.topRatedState.loadMovies(with: .topRated)
                        }
                    }
                    
                    
                }
                .listRowInsets(EdgeInsets(top: 8, leading: 10, bottom: 8, trailing: 10))
                
            }
            .navigationBarTitle("The MovieDb")
        }
        .onAppear {
            self.topRatedState.loadMovies(with: .topRated)
        }
        
    }
}

struct TopRatedMovieListView_Previews: PreviewProvider {
    static var previews: some View {
        TopRatedMovieListView()
    }
}
