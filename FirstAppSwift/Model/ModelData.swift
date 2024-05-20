//
//  ModelData.swift
//  FirstAppSwift
//
//  Created by Shreyash Dewangan on 17/05/24.
//

import Foundation

@Observable
class ModelData{
    var landmarks: [Landmark] = load("landmarkData.json")
}

func load<T: Decodable>(_ filename:String)->T{
    let data:Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    
    else{
        fatalError("Couldn't find \(filename) in main bundle. ")
    }
    
    do{
        data = try Data(contentsOf: file)
    }catch{
        fatalError("Couldn't find \(filename) in main bundle:\n\(error) ")
    }
    
    do{
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }catch{
        fatalError("Couldn't find \(filename) as \(T.self):\n\(error) ")
    }
}
