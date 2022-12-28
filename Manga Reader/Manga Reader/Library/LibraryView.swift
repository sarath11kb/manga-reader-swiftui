//
//  LibraryView.swift
//  Manga Reader
//
//  Created by Admin on 28/12/22.
//

import SwiftUI

struct LibraryView: View {
    @StateObject var viewModel: LibraryViewModel = LibraryViewModel(mangaList: [MangaDetails(title: "one piece", coverImg: "https://xfs-200.mpcdn.org/thumb/W600/ampi/be4/be403f74915d84568953b80ff702614820877536_200_304_54335.jpg?acc=DZ_koWXiWN9zR7_mS5yNnQ&exp=1672275077")])
    
    
    var body: some View {
        
        //ideally its as follows
        //header
        //Space to show library
        VStack {
            HeadingView(heading: "Library")
                
            LibraryListView(mangaList: viewModel.mangaList)
                .frame(minHeight: 200, maxHeight: .greatestFiniteMagnitude)
        }
        
    }
}

struct HeadingView: View {
    @State var heading: String
    
    var body: some View {
        HStack {
            Spacer()
            Text(heading)
                .font(.title)
            Spacer()
        }
    }
}

struct LibraryListView: View {
    @State var mangaList: [MangaDetails] = []
    
    var body: some View {
        if mangaList.isEmpty {
            Text("No manga found")
        } else {
            
            if let img = mangaList.first?.coverImg {
                AsyncImage(url: URL(string: img)) { img in
                    img
                        .resizable()
                        .frame(width: 100, height: 100, alignment: .center)
                } placeholder: {
                    ProgressView()
                }

            }
        }
    }
}


struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
