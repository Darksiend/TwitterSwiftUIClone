//
//  AuthViewModel.swift
//  TwitterSwiftUIClone
//
//  Created by Anton Chesnokov on 17/10/2021.
//

import SwiftUI
import Firebase
 

class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    @Published var isAuthenticating = false
    @Published var error: Error?
    @Published var user: User?
    
    init() {
        userSession = Auth.auth().currentUser
        fetchUser()
    }
    
    func login(withEmail email: String, password: String ) {
        Auth.auth().signIn(withEmail: email, password: password){ result, error in
            
            if let error = error {
                print("DEBUG!: Failed to login!\(error.localizedDescription)")
                return
            }
            
            print("DEBUG!: Sucssesfully logged in!")
            self.userSession = result?.user
            
        }
    }
    func registerUser(email: String, password: String, username: String, fullname: String, profileimage: UIImage) {
        print("DEBUG!: Email is: \(email)")
        print("DEBUG!: Password is: \(password)")
        
        guard let imageData = profileimage.jpegData(compressionQuality: 0.3) else {return}
        let filename = NSUUID().uuidString
        let storageRef = Storage.storage().reference().child(filename)
        
        storageRef.putData(imageData, metadata: nil) { _, error in
            
            if let error = error {
                print("DEBUG!: Failed to Upload image!\(error.localizedDescription)")
                return
            }
            
            print("DEBUG!: Successfully loaded a user photo!")
            
            storageRef.downloadURL { url, _  in
                
                guard let profileImageURL = url?.absoluteString else {return}
                
                
                Auth.auth().createUser(withEmail: email, password: password) { result, error in
                    if let error = error {
                        print("DEBUG! Error: \(error.localizedDescription)")
                        return
                    }
                    
                    guard let user = result?.user else {return}
                    
                    let data =  ["email":  email ,
                                 "username": username.lowercased(),
                                 "fullname": fullname,
                                 "profileImageURL": profileImageURL,
                                 "uid": user.uid ]
                    
                    Firestore.firestore().collection("users").document(user.uid).setData(data) { _ in
                        print("DEBUG! Succsesfully uploaded user data!")
                        self.userSession = user
                    }
                    
                    print("DEBUG!: Successfully signed up user!")
                    
                    
                    
                    
                }

            }
            
        }
        
    }
    
    func signOut() {
        userSession = nil
        try? Auth.auth().signOut()
    }
    
    func fetchUser(){
        guard let uid = userSession?.uid else { return }
        print("DEBUG! UID: \(uid)")
        Firestore.firestore().collection("users").document(uid).getDocument { snapshot,  error in
            if let error = error {
                print("DEBUG! Error: \(error.localizedDescription)")
                return
            }
            guard let data = snapshot?.data() else {return}            
            let user = User(dictionary: data)
            
            print("DEBUG!: User is \(user)")
        }
    }
}

