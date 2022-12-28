//
//  LibraryView.swift
//  Manga Reader
//
//  Created by Admin on 28/12/22.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
        
        //ideally its as follows
        //header
        //Space to show library
        VStack {
            HeadingView(heading: "Library")
                
            LibraryListView()
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
    
    var body: some View {
        Text("No manga found")
    }
}


struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
