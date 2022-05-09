//
//  PersonTabView.swift
//  M4L6-challenge
//
//  Created by Pablo Reiser on 08.05.22.
//

import SwiftUI

struct PersonTabView: View {
    
    @EnvironmentObject var model:PersonModel
    
    var body: some View {
        TabView {
            PeopleListView()
                .tabItem {
                    Image(systemName: "person.2")
                }
            SettingsView()
                .tabItem {
                    Image(systemName: "gear")
                }
        }
    }
}

struct PersonTabView_Previews: PreviewProvider {
    static var previews: some View {
        PersonTabView()
    }
}
