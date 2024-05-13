//
//  Profile.swift
//  Pizza
//
//  Created by Матвей Глухов on 13.05.2024.
//

import SwiftUI

struct Profile: View {
    
    var person: Person
    
    var body: some View {
        if person.userIsLogged {
            
        } else {
            NavigationStack {
                VStack {
                    Spacer()
                    Text("Log in to your profile")
                        .font(.system(.title, design: .default, weight: .bold))
                    Text("To save points and receive personal discounts")
                        .font(.subheadline)
                    Button("Enter a phone number") {
                        
                    }
                    .padding()
                    .background(.yellow)
                    .foregroundStyle(.white)
                    .font(.callout)
                    .clipShape(.capsule)
                    
                    Spacer()
                    NavigationLink("Legal documents") {
                        
                    }
                    .foregroundStyle(.gray)
                    
                }
                
                .navigationTitle("Profile")
                .navigationBarTitleDisplayMode(.inline)
            }
            
        }
    }
}

#Preview {
    Profile(person: Person(name: "Matvey", lastName: "Glukhov", address: Adress(city: "Ekaterinburg", street: "8 marta", house: "181/2", apartment: "187"), telephone: 89995693476, email: "gmv96@mail.ru"))
}
