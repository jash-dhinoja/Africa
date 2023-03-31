//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Jash Dhinoja on 23/03/2023.
//

import Foundation

extension Bundle{
    func decode<T: Codable>( _ file: String) -> T {
            guard let url = self.url(forResource: file, withExtension: nil) else {
                fatalError("Failed to loacate file")
            }
            guard let data = try? Data (contentsOf: url) else{
                fatalError("Failed to load file")
            }
            
            let decoder = JSONDecoder()
            
            guard let decodedData = try? decoder.decode(T.self, from: data) else{
                fatalError("Failed to decode file")
            }
            return decodedData
        }

}
