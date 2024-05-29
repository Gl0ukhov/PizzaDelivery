//
//  PhoneNumberFormat.swift
//  Pizza
//
//  Created by Матвей Глухов on 20.05.2024.
//

import SwiftUI

struct PhoneNumberFormat: View {
    @Environment (\.dismiss) var dismiss
    let allPhone: [PhoneNumbersFormat] = Bundle.main.decode("PhoneNumbers.json")
    let person: Persons
    
    var body: some View {
        NavigationStack {
            List(allPhone) { phone in
                Button(action: {
                    person.formatNumber = phone
                    dismiss()
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
                        
                        //                        if person.formatNumber.id == phone.id {
                        //                            Image(systemName: "checkmark")
                        //                        }
                        
                    }
                    .padding(.vertical, 15)
                })
            }
            .listStyle(.plain)
            .navigationTitle("Phone country code")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Back", systemImage: "xmark") {
                        dismiss()
                    }
                }
            }
        }
    }
    
    
}

#Preview {
    PhoneNumberFormat(person: Persons())
}
