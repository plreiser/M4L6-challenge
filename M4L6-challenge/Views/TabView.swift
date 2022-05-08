//
//  TabView.swift
//  M4L6-challenge
//
//  Created by Pablo Reiser on 08.05.22.
//

import SwiftUI

struct TabView: View {
    var body: some View {
        TabView {
            PeopleListView()
                .tabItem {
                    Image(systemName: "people.2")
                }
            SettingsView()
                .tabItem {
                    Image(systemName: "settings")
                }
        }
        .environmentObject(PersonModel())
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabView()
    }
}
