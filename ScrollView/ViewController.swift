//
//  ViewController.swift
//  ScrollView
//
//  Created by Andrey Bezrukov on 24.02.2023.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - IBOutlet
    @IBOutlet private weak var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let color1 = UIColor(red: 153 / 255, green: 200 / 255, blue: 61 / 255, alpha: 1.0).cgColor
        let color2 = UIColor(red: 243 / 255, green: 120 / 255, blue: 51 / 255 , alpha: 1.0).cgColor
        let color3 = UIColor(red: 183 / 255, green: 80 / 255, blue: 69 / 255 , alpha: 1.0).cgColor
        
        let gredientLayer = CAGradientLayer()
        gredientLayer.frame = self.view.bounds
        gredientLayer.colors = [color1, color2, color3]
        gredientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gredientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        self.view.layer.insertSublayer(gredientLayer, at: 0)
        
        collectionView.dataSource = self
        let buttonCellNib = UINib(nibName: "ButtonCell", bundle: nil)
        collectionView.register(buttonCellNib, forCellWithReuseIdentifier: "ButtonCell")
        let commondCell = UINib(nibName: "CommondCell", bundle: nil)
        collectionView.register(commondCell, forCellWithReuseIdentifier: "CommondCell")
        
    }
}

    // MARK: - Collection View 
extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.item {
        case 0:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ButtonCell", for: indexPath) as! ButtonCell
            cell.configure(topImage: UIImage(systemName: "qrcode.viewfinder"), bottonImage: UIImage(systemName: "plus.circle"))
            return cell
        case 1:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CommondCell", for: indexPath) as! CommondCell
            cell.configure(icon: UIImage(systemName: "square.and.arrow.up.fill"), text: "Hi!")
            return cell
        case 2:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CommondCell", for: indexPath) as! CommondCell
            cell.configure(icon: UIImage(systemName: "rectangle.portrait.and.arrow.right"), text: "Hello!!")
            return cell
        case 3:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CommondCell", for: indexPath) as! CommondCell
            cell.configure(icon: UIImage(systemName: "pencil"), text: "Ciao!!")
            return cell
        case 4:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CommondCell", for: indexPath) as! CommondCell
            cell.configure(icon: UIImage(systemName: "folder"), text: "Hail!")
            return cell
        default:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CommondCell", for: indexPath) as! CommondCell
            cell.configure(icon: UIImage(systemName: "paperplane"), text: "Cheer!")
            return cell
        }
    }
}

