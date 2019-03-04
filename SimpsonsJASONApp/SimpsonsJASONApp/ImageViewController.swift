//
//  ImageViewController.swift
//  SimpsonsJASONApp
//
//  Created by MAC Consultant on 3/4/19.
//  Copyright © 2019 MAC Consultant. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate
{
    
    @IBOutlet weak var ImagetableView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ImagetableView.delegate = self
        ImagetableView.dataSource = self
        ImagetableView.register(UICollectionViewCell.self, forCellWithReuseIdentifier:"Imagecell")
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ViewController.simpsonsCharacters.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        print("Before")
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Imagecell", for: indexPath) as! CharacterImageViewCell
//        let imageURL = URL(ViewController.simpsonsCharacters[indexPath.row].Icon.URL)
        //   let data = try? Data(contentsOf: imageURL!)
        cell.CharacterImageView.image = UIImage(named: "Apu.png")
        print("After")
        return cell
    }}
