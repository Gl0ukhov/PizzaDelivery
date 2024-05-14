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
                    Image("person")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 230, height: 250, alignment: .center)
                        .padding(50)
                    
                    Group {
                        Text("Log in to profile")
                            .font(.largeTitle)
                            .bold()
                            .multilineTextAlignment(.center)
                        
                        Text("To save points and receive \n personal discounts")
                            .font(.subheadline)
                            .multilineTextAlignment(.center)
                    }
                    .padding(3)
                    
                        Button("Enter a phone number") {
                            
                        }
                        .frame(width: 220, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color(#colorLiteral(red: 0.9014285207, green: 0.08878894895, blue: 0.5165427327, alpha: 1)))
                        .foregroundStyle(.white)
                        .font(.callout)
                        .bold()
                        .clipShape(.capsule)
                        .padding(25)
                    
                    
                    
                    Spacer()
                    
                    Group {
                        NavigationLink("Legal documents") {
                            LegalDocimets()
                        }
                        .foregroundStyle(Color(#colorLiteral(red: 0.5741485357, green: 0.5741624236, blue: 0.574154973, alpha: 1)))
                        .font(.footnote)
                        
                        Text("Version 1.0.0, bield TEST")
                            .foregroundStyle(Color(#colorLiteral(red: 0.7540688515, green: 0.7540867925, blue: 0.7540771365, alpha: 1)))
                            .font(.caption)
                        
                    }
                    .padding(3)
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
