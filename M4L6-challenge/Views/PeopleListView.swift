//
//  PeopleListView.swift
//  M4L6-challenge
//
//  Created by Pablo Reiser on 08.05.22.
//

import SwiftUI

struct PeopleListView: View {
    
    @EnvironmentObject var modell:PersonModel
    
    @ObservedObject var model = PersonModel()
    
    var body: some View {
        NavigationView {
            List(model.persons) { person in
                Text(person.name)
            }
        }
    }
}


struct PeopleListView_Previews: PreviewProvider {
    static var previews: some View {
        PeopleListView()
    }
}
