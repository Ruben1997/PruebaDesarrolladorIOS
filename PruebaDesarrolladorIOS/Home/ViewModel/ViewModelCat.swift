//
//  HomeViewModel.swift
//  PruebaDesarrolladorIOS
//
//  Created by Ruben Dario Rocha Lizcano on 22/02/23.
//

import Foundation

class ViewModelCat: ObservableObject {
    
    @Published private(set) var breeds : [Cat] = []
    private let apiCats: ApiCats
    
    init(apiCats: ApiCats){
        self.apiCats = apiCats
    }
    
    func getCats() async {
        do {
            let result = try await apiCats.fetchBreeds()
            DispatchQueue.main.async {
                self.breeds = result
            }
        } catch {
            print(error)
        }
    }
}
