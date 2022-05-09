//
//  M4L6_challengeApp.swift
//  M4L6-challenge
//
//  Created by Pablo Reiser on 08.05.22.
//

import SwiftUI

@main
struct M4L6_challengeApp: App {
    var body: some Scene {
        WindowGroup {
            PersonTabView()
                .environmentObject(PersonModel())
        }
        
    }
}
