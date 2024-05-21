//
//  PhoneNumberFormat.swift
//  Pizza
//
//  Created by Матвей Глухов on 20.05.2024.
//

import SwiftUI

struct PhoneNumberFormat: View {
    
    let allPhone: [PhoneNumbersFormat] = Bundle.main.decode("PhoneNumbers.json")
    var person: Person
    
    var body: some View {
        NavigationStack {
            
            List(allPhone) { phone in
                Button(action: {
                    print("ok")
                }, label: {
                    HStack {
                        Text(phone.image)
                        Text(phone.formatNumber)
                        if phone.formatNumber.count == 2 {
                            Text(phone.name)
                                .padding(.leading, 40)
                        } else if phone.formatNumber.count == 3 {
                            Text(phone.name)
                                .padding(.leading, 30)
                        } else {
                            Text(phone.name)
                                .padding(.leading, 20)
                        }
                        if person.formatNumber == phone.formatNumber {
                            
                        }
                        
                    }
                    .padding(.vertical, 15)
                })
            }
            .listStyle(.plain)
            .navigationTitle("Phone country code")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    
}

#Preview {
    PhoneNumberFormat(person: Person())
}
