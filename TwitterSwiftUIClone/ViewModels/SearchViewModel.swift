//
//  SearchViewModel.swift
//  TwitterSwiftUIClone
//
//  Created by Anton Chesnokov on 19/10/2021.
//

import SwiftUI
import Firebase

class SearchViewModel: ObservableObject {
    
    @Published var users =  [User]()
    
    init() {
        
        fetchUsers()
        
    }
    func fetchUsers() {
        
        COLLECTION_USERS.getDocuments { snapshot, error in
            
            if let error = error {
                
                print("DEBUG! Error: \(error.localizedDescription)")
                
                return
            }
            guard let documents = snapshot?.documents else {return}
            
            self.users = documents.map({ User(dictionary: $0.data()) })
            
            print("DEBUG!: Users is \(self.users)")
        }
    }
}
