//
//  ContentView.swift
//  Pizza
//
//  Created by Матвей Глухов on 13.05.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Text("Menu")
                .tabItem {
                    Label("Menu", systemImage: "menucard")
                }
            
            Profile(person: Person())
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                }
            
            Text("Contact")
                .tabItem {
                    Label("Contact", systemImage: "person.crop.circle")
                }
            
            Cart(person: Person())
                .tabItem {
                    Label("Cart", systemImage: "cart")
                }
        }
    }
}

#Preview {
    ContentView()
}
