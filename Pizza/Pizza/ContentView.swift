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
            
            Profile(person: Person(name: "Matvey", lastName: "Glukhov", address: Adress(city: "Ekaterinburg", street: "8 marta", house: "181/2", apartment: "187"), telephone: 89995693476, email: "gmv96@mail.ru"))
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                }
            
            Text("Contact")
                .tabItem {
                    Label("Contact", systemImage: "person.crop.circle")
                }
            
            Cart(person: Person(name: "Matvey", lastName: "Glukhov", address: Adress(city: "Ekaterinburg", street: "8 marta", house: "181/2", apartment: "187"), telephone: 89995693476, email: "gmv96@mail.ru"))
                .tabItem {
                    Label("Cart", systemImage: "cart")
                }
        }
    }
}

#Preview {
    ContentView()
}
