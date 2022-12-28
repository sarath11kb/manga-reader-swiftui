//
//  LibraryViewModel.swift
//  Manga Reader
//
//  Created by Admin on 28/12/22.
//

import Foundation

class LibraryViewModel: ObservableObject {
    @Published var mangaList: [MangaDetails]
    
    init(mangaList: [MangaDetails]) {
        self.mangaList = mangaList
    }
}


struct MangaDetails {
    let title: String
    let coverImg: String
}
