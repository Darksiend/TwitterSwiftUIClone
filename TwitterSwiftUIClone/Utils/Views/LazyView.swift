//
//  LazyView.swift
//  TwitterSwiftUIClone
//
//  Created by Anton Chesnokov on 30/10/2021.
//

import SwiftUI

struct LazyView<Content: View>: View {
    let build: () -> Content
    init(_ build: @autoclosure @escaping() -> Content) {
        self.build = build
    }
    
    var body: Content{
        build()
    }
}
