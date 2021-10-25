//
//  TwitterSwiftUICloneApp.swift
//  TwitterSwiftUIClone
//
//  Created by Anton Chesnokov on 28/09/2021.
//

import SwiftUI
import Firebase

@main
struct TwitterSwiftUICloneApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            
            ContentView().environmentObject(AuthViewModel.shared)

        }
    }
}
