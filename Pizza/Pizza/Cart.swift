//
//  Cart.swift
//  Pizza
//
//  Created by Матвей Глухов on 13.05.2024.
//

import SwiftUI


struct Cart: View {
    var person: Persons
    
    var body: some View {
        if  person.basketIsEmpty == true {
            ContentUnavailableView("The basket is empty", systemImage: "cart.fill", description: Text("Add the product to the car"))
        } else {
            
        }
        
    }
}

#Preview {
    Cart(person: Persons())
}
