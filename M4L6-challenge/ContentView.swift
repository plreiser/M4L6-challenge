//
//  ContentView.swift
//  EnvironmentObjectChallenge
//
//  Created by Micah Beech on 2021-02-28.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model: Model
    
    var body: some View {
        TabView {
            
            VStack {
                Text("People")
                    .font(.title)
                    .bold()
                
                List(model.people) { person in
                    PersonView(person: person)
                }
            }
            .tabItem { Image(systemName: "person.2") }
            
            VStack {
                Text("Display Preferences")
                    .font(.title)
                    .bold()
                
                Toggle("Show name:", isOn: $model.showName)
                
                Toggle("Show address:", isOn: $model.showAddress)
                
                Toggle("Show company:", isOn: $model.showCompany)
                
                Toggle("Show years of experience:", isOn: $model.showYears)
                
                Spacer()
            }
            .tabItem { Image(systemName: "gearshape") }
            .padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Model())
    }
}
