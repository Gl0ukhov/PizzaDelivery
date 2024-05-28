//
//  ContentView.swift
//  Pizza
//
//  Created by Матвей Глухов on 13.05.2024.
//

import SwiftUI

struct ContentView: View {
    let person = Persons()
    
    var body: some View {
        TabView {
            Text("Menu")
                .tabItem {
                    Label("Menu", systemImage: "menucard")
                }
            
            Profile(person: person)
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                }
            
            Text("Contact")
                .tabItem {
                    Label("Contact", systemImage: "person.crop.circle")
                }
            
            Cart(person: person)
                .tabItem {
                    Label("Cart", systemImage: "cart")
                }
        }
        .preferredColorScheme(.light)
    }
}

#Preview {
    ContentView()
}
