//
//  extension.swift
//  ToDoList
//
//  Created by Aung Sett Paing on 2024-05-30.
//

import Foundation

extension Encodable{
    func asDIctionary() -> [String: Any] {
        guard let data = try? JSONEncoder().encode(self) else{
            return [:]
        }
        
        do {
            let json = try JSONSerialization.jsonObject(with: data) as? [String: Any]
            return json ?? [:]
        }catch {
            return [:]
        }
                
    }
}
