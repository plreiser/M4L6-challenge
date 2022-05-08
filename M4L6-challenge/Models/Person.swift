//
//  Person.swift
//  M4L6-challenge
//
//  Created by Pablo Reiser on 08.05.22.
//

import Foundation

class Person: Identifiable, Decodable {
    
    var id:UUID?
    var name:String
    var address:String
    var yearsOfExperience:Int
}
