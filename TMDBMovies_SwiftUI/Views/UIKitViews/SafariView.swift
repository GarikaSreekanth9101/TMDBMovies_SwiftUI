//
//  SafariView.swift
//  TMDBMovies_SwiftUI
//
//  Created by Garika Sreekanth on 16/01/21.
//  Copyright © 2021 Garika Sreekanth. All rights reserved.
//

import SafariServices
import SwiftUI

struct SafariView: UIViewControllerRepresentable {
    
    let url: URL

    func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {
        
    }
    
    func makeUIViewController(context: Context) -> SFSafariViewController {
        let safariVC = SFSafariViewController(url: self.url)
        return safariVC
    }
}
