//
//  BirthdaysApp.swift
//  Birthdays
//
//  Created by Orvs on 7/11/25.
//

import SwiftUI

@main
struct BirthdaysApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Friend.self)
        }
    }
}
