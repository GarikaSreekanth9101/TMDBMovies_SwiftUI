//
//  ActivityIndicatorView.swift
//  TMDBMovies_SwiftUI
//
//  Created by Garika Sreekanth on 16/01/21.
//  Copyright © 2021 Garika Sreekanth. All rights reserved.
//

import SwiftUI

struct ActivityIndicatorView: UIViewRepresentable {
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {}

    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let view = UIActivityIndicatorView(style: .large)
        view.startAnimating()
        return view
    }
}

