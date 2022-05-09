//
//  SettingsView.swift
//  M4L6-challenge
//
//  Created by Pablo Reiser on 08.05.22.
//

import SwiftUI

struct SettingsView: View {
    
    @EnvironmentObject var model:PersonModel
    
    var body: some View {
        Text("This is Settings view")
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
