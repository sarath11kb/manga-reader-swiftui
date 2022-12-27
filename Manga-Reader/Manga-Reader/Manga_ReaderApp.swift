//
//  Manga_ReaderApp.swift
//  Manga-Reader
//
//  Created by Admin on 27/12/22.
//

import SwiftUI

@main
struct Manga_ReaderApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
