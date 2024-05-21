//
//  Extension.swift
//  Pizza
//
//  Created by Матвей Глухов on 21.05.2024.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Faile to locate \(file)")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from budnle")
        }
        
        guard let loaded = try? JSONDecoder().decode(T.self, from: data) else  {
            fatalError("Failed to load \(file) from budnle")
        }
        
        return loaded
    }
}
