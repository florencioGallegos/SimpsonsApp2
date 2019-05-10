//
//  JSONSeralization.swift
//  SimpsonsJASONApp
//
//  Created by MAC Consultant on 5/9/19.
//  Copyright © 2019 MAC Consultant. All rights reserved.
//
/*
import UIKit

class JSONSeralization: NSObject {
    
 final let url = URL(string: "http://api.duckduckgo.com/?q=simpsons+characters&format=json")
 static var simpsonsCharacters  = [SimpsonsCharacter]()
 
    func downloadJSON()
    {
        guard let downloadURL = url else { return }
        URLSession.shared.dataTask(with: downloadURL) {data, urLResponse, error in
            guard let data = data, error == nil, urLResponse != nil else
            {
                print("Something is wrong with the download")
                return
            }
            do
            {
                let decoder = JSONDecoder()
                let downloadedCharacters = try decoder.decode(SimpsonsCharacters.self, from: data)
                ViewController.simpsonsCharacters = downloadedCharacters.RelatedTopics
                DispatchQueue.main.async
                    {
                        ViewController.tableView.reloadData()
                }
            } catch
            {
                print("something is wrong with the JSON file")
            }
            }.resume()
    }
    
}

*/
