//
//  DataModel.swift
//  UsersList
//
//  Created by Himanshu on 3/22/23.
//

import Foundation

class DataModel: ObservableObject {
    
    @Published var results = [UsersModel]()
    @Published var page = 0
    @Published var error = ""
    
    func loadData(api_url: String) {
        
        results = []
        
        guard let url = URL(string: api_url) else {
            error = "Couldn't connect to the servers. Please try again later."
            return
        }
        
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) {
            data, response, error in
            if let data = data {
                do {
                    let response = try JSONDecoder().decode(ResponseModel.self, from: data)
                    DispatchQueue.main.async {
                        [weak self] in
                        self?.error = ""
                        self?.results = response.data
                    }
                }catch {
                    self.error = error.localizedDescription
                }
            }
            
            if let error = error {
                self.error = error.localizedDescription
            }
            
        }.resume()
    }
    
}
