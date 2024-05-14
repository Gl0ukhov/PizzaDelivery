//
//  LegalDocimets.swift
//  Pizza
//
//  Created by Матвей Глухов on 14.05.2024.
//

import SwiftUI

struct LegalDocimets: View {
    var body: some View {
        NavigationStack {
            List {
                Link("Bonus", destination: URL(string: "https://ya.ru/")!)
            }
        }
//        .listStyle()
    }
}

#Preview {
    LegalDocimets()
}
