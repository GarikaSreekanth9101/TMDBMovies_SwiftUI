//
//  UpComingMovieListView.swift
//  TMDBMovies_SwiftUI
//
//  Created by Garika Sreekanth on 17/01/21.
//  Copyright © 2021 Garika Sreekanth. All rights reserved.
//

import SwiftUI

struct UpComingMovieListView: View {
    
    
    @ObservedObject private var upcomingState = MovieListState()
    
    
     var body: some View {
        NavigationView {
            List {
                
                
                Group {
                    if upcomingState.movies != nil {
                        MovieBackdropCarouselView(title: "Upcoming", movies: upcomingState.movies!)
                    } else {
                        LoadingView(isLoading: self.upcomingState.isLoading, error: self.upcomingState.error) {
                            self.upcomingState.loadMovies(with: .upcoming)
                        }
                    }
                }
                .listRowInsets(EdgeInsets(top: 8, leading: 10, bottom: 8, trailing: 10))
                
                
                
                
            }
            .navigationBarTitle("The MovieDb")
        }
        .onAppear {
           
            self.upcomingState.loadMovies(with: .upcoming)
            
        }
        
    }
}

struct UpComingMovieListView_Previews: PreviewProvider {
    static var previews: some View {
        UpComingMovieListView()
    }
}
