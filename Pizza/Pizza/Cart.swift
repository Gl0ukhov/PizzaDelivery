//
//  Cart.swift
//  Pizza
//
//  Created by Матвей Глухов on 13.05.2024.
//

import SwiftUI


struct Cart: View {
    var person: Person
    
    var body: some View {
        if  person.basketIsEmpty == true {
            ContentUnavailableView("The basket is empty", systemImage: "cart.fill", description: Text("Add the product to the car"))
        } else {
            
        }
        
    }
}

#Preview {
    Cart(person: Person(name: "Matvey", lastName: "Glukhov", address: Adress(city: "Ekaterinburg", street: "8 marta", house: "181/2", apartment: "187"), telephone: 89995693476, email: "gmv96@mail.ru"))
}
