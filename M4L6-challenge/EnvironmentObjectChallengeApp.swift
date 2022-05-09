//
//  EnvironmentObjectChallengeApp.swift
//  EnvironmentObjectChallenge
//
//  Created by Micah Beech on 2021-02-28.
//

import SwiftUI

@main
struct M4L6_Challenge: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Model())
        }
    }
}
