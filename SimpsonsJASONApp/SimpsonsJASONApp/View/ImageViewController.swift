//
//  ImageViewController.swift
//  SimpsonsJASONApp
//
//  Created by MAC Consultant on 3/4/19.
//  Copyright © 2019 MAC Consultant. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {
    
    @IBOutlet weak var ImagetableView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ImagetableView.delegate = self
        ImagetableView.dataSource = self
        ImagetableView.register(UICollectionViewCell.self, forCellWithReuseIdentifier:"Imagecell")
        // Do any additional setup after loading the view.
    }
    
 
}


extension ImageViewController: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ViewController.simpsonsCharacters.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        print("Before")
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CharacterImageCell", for: indexPath) as! CharacterImageViewCell
        
        cell.CharacterImageView.image = nil
        if let imageURL = URL(string: ViewController.simpsonsCharacters[indexPath.row].Icon.URL) {
            URLSession.shared.dataTask(with: imageURL) { (data, _, _) in
                if let dat = data {
                    let image = UIImage(data: dat)
                    DispatchQueue.main.async {
                        cell.CharacterImageView.image = image
                        print("After")
                    }
                }
                }.resume()
        }
        return cell
    }
}
extension ImageViewController: UICollectionViewDelegate {
    
}

