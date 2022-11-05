//
//  File.swift
//  
//
//  Created by Jeremie Berduck on 05/11/2022.
//

import SwiftUI

class MyAppsViewModel: ObservableObject {
    
    @Published var list: [AnApp] = [AnApp]()
    @Published var iTunesResults: Itunes = iTunes(resultCount: 0, results: [Result]())
    
    let url = "http://itunes.apple.com/lookup?id="
    let sampleApp = ["1488166941","1614712181"]
    
    init(){
        getApp{ (result) in
            switch result {
            case .success(let apps):
                DispatchQueue.main.async {
                    self.iTunesResults = apps
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    func getApp(completion: @escaping (Result<iTunes, Error>) -> Void ){
        guard let url = URL(string: url + sampleApp.joined(separator: ",")) else {
            print("⚠️ Invalid URL!"); return
        }
        let session = URLSession(configuration: .default)
        
        session.dataTask(with: url) { (data, response, error) in
            if let error = error {
                completion(.failure(error.localizedDescription as! Error))
                return
            }
            do {
                let apps = try! JSONDecoder().decode(iTunes.self, from: data!)
                completion(.success(apps))
                
            }
        }.resume()
        
    }
    
    
}
