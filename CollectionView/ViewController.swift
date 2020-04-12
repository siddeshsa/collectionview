//
//  ViewController.swift
//  CollectionView
//
//  Created by mac on 08/04/20.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate{

    @IBOutlet weak var collectionView: UICollectionView!
    
    let imagesLabel = ["my string1",
                       "my string2",
                       "my string3",
                       "my string4",
                       "my string5",
                       "my string6",
                       "my string7",
                       "my string8"
                       ]
    
    let imagesImage:[UIImage]=[
    #imageLiteral(resourceName: "fourth"),#imageLiteral(resourceName: "sixth"),#imageLiteral(resourceName: "fifth"),#imageLiteral(resourceName: "first"),#imageLiteral(resourceName: "second"),#imageLiteral(resourceName: "sixth"),#imageLiteral(resourceName: "fourth"),#imageLiteral(resourceName: "fourth")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagesLabel.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        cell.labelView.text = imagesLabel[indexPath.item]
        cell.ImageView.image = imagesImage[indexPath.item]
        return cell
    }
    
    

}

