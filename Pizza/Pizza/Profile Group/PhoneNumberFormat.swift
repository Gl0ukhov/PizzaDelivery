//
//  PhoneNumberFormat.swift
//  Pizza
//
//  Created by Матвей Глухов on 20.05.2024.
//

import SwiftUI

struct PhoneNumberFormat: View {
    
    var body: some View {
        List {
            HStack {
                Text("🇧🇾") 
            }
        }
    }
    
    func decode() {
        let data = Bundle.main.url(forResource: "PhoneNumbers", withExtension: "json")
        if let phone = try? JSONDecoder().decode(PhoneNumbersFormat.self, from: data) {
            
        }
    }
}

#Preview {
    PhoneNumberFormat()
}
