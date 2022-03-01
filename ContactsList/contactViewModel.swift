//
//  contactViewModel.swift
//  ContactsList
//
//  Created by Ayaulym Alzhanova on 22.09.2021.
//

import Foundation

class apiCall {
    func getUsers(completion:@escaping ([Contact]) -> ()) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else { return }
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            let users = try! JSONDecoder().decode([Contact].self, from: data!)
            print(users)
            
            DispatchQueue.main.async {
                completion(users)
            }
        }
        .resume()
    }
}

