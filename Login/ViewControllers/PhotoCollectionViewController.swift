//
//  PhotoCollectionViewController.swift
//  Login
//
//  Created by Sofi on 06.02.2021.
//

import UIKit

class PhotoCollectionViewController: UICollectionViewController {
    
    var photo = DataUser.showDataUser().foto
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = UIImage(named: "Back2.jpg")
        let imageView = UIImageView(image: image)
        collectionView.backgroundView = imageView
        imageView.alpha = 0.45
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return photo.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! PhotoColectionCell
        
        let imageName = photo[indexPath.item]
        cell.photoImageView.image = UIImage(named: imageName)
        
        return cell
    }
    
}

extension PhotoCollectionViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = (view.frame.width / 2)
        
        return CGSize(width: width, height: width)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.zero
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
}
