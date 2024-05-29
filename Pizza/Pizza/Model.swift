//
//  Model.swift
//  Pizza
//
//  Created by Матвей Глухов on 13.05.2024.
//

import Foundation
import SwiftUI

@Observable
class Persons {
    var name: String?
    var lastName: String?
    var address: Adress?
    var telephone: Int?
    var formatNumber = PhoneNumbersFormat(id: 1, image: "🇷🇺", formatNumber: "+7", name: "Россия")
    var email: String?
    
    
    var userIsLogged = false 
    
    var basket: [Basket] = []
    var basketIsEmpty: Bool {
        if basket.isEmpty {
            return true
        } else {
            return false
        }
    }
    
}

class PhoneNumbersFormat: Codable, Identifiable {
    var id: Int
    var image: String
    var formatNumber: String
    var name: String
    
    init(id: Int, image: String, formatNumber: String, name: String) {
        self.id = id
        self.image = image
        self.formatNumber = formatNumber
        self.name = name
    }
}

class Basket {
    var productName: String
    var quantity: Int
    
    init(productName: String, quantity: Int) {
        self.productName = productName
        self.quantity = quantity
    }
}

class Adress {
    var city: String
    var street: String
    var house: String
    var apartment: String
    init(city: String, street: String, house: String, apartment: String) {
        self.city = city
        self.street = street
        self.house = house
        self.apartment = apartment
    }
}



