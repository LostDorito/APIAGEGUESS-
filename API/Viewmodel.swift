//
//  Viewmodel.swift
//  API
//
//  Created by  on 3/13/25.
//

import Foundation
import SwiftUI

class ViewModel: ObservableObject{
    
    @Published var age:Int = 1
    @Published var name:String = "Kanye"
    @MainActor
    func getNameAge() async throws{
        let urlString = "https://api.agify.io/?name=\(name)"
        if let url = URL(string: urlString){
            let (data, response) = try await URLSession.shared.data(from: url)
            if let json = try JSONSerialization.jsonObject(with: data) as? [String: Any]{
                print(json)
                age = json["age"] as? Int ?? 1601
                
            }
        }
        
    }

}
                
            
