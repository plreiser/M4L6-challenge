//
//  PersonModel.swift
//  M4L6-challenge
//
//  Created by Pablo Reiser on 08.05.22.
//

import Foundation

class PersonModel: ObservableObject {
    
    @Published var persons = [Person]()
    
    init() {
        self.persons = DataServices.getLocalData()
    }
}
