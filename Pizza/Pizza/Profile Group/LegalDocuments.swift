//
//  LegalDocimets.swift
//  Pizza
//
//  Created by Матвей Глухов on 14.05.2024.
//

import SwiftUI

struct LegalDocuments: View {
    var body: some View {
        NavigationStack {
            List {
                Link(destination: URL(string: "https://ya.ru/")!, label: {
                    NavigationLink { } label: {
                        Text("Bonus")
                    }
                })
                Link(destination: URL(string: "https://ya.ru/")!, label: {
                    NavigationLink { } label: {
                        Text("Calorie content and composition")
                    }
                })
                Link(destination: URL(string: "https://ya.ru/")!, label: {
                    NavigationLink { } label: {
                        Text("Full terms of the shares")
                    }
                })
                Link(destination: URL(string: "https://ya.ru/")!, label: {
                    NavigationLink { } label: {
                        Text("Offer")
                    }
                })
                Link(destination: URL(string: "https://ya.ru/")!, label: {
                    NavigationLink { } label: {
                        Text("Terms of personal data processing")
                    }
                })
            }
            .listStyle(.plain)
            .foregroundStyle(.black)
            .navigationTitle("Legal documents")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    LegalDocuments()
}
