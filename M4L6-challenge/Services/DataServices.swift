//
//  DataServices.swift
//  M4L6-challenge
//
//  Created by Pablo Reiser on 08.05.22.
//

import Foundation

class DataServices {
    static func getLocalData() -> [Person] {
        
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        guard pathString != nil else {
            return [Person]()
        }
        let url = URL(fileURLWithPath: pathString!)
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            do {
                let personData = try decoder.decode([Person].self, from: data)
                
                for p in personData {
                    p.id = UUID()
                }
                return personData
            }
            catch {
                print(error)
            }
        }
        catch {
            print(error)
        }
        return [Person]()
    }
}

