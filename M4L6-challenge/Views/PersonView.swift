//
//  PersonView.swift
//  M4L6-challenge
//
//  Created by Pablo Reiser on 09.05.22.
//

import SwiftUI

struct PersonView: View {
    
    @EnvironmentObject var modell:PersonModel
    
    @ObservedObject var model = PersonModel()
    
    var person:Person
    
    var body: some View {
        VStack {
            ForEach (person.name) { p in
                Text(p)
            }
        }
    }
}


struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        let model = PersonModel()
    
        PersonView(person:model.persons[0])
    }
}
