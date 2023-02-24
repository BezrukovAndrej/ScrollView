//
//  ButtonCell.swift
//  ScrollView
//
//  Created by Andrey Bezrukov on 24.02.2023.
//

import UIKit

class ButtonCell: UICollectionViewCell {
    // MARK: - IBOutlet
    @IBOutlet private weak var topButton: UIButton!
    @IBOutlet private weak var bottonButton: UIButton!
    
    // MARK: - Public
    func configure(topImage: UIImage?, bottonImage: UIImage?) {
        topButton.setImage(topImage, for: .normal)
        bottonButton.setImage(bottonImage, for: .normal)
    }
    
    //MARK: - View lifecycle
    override  func awakeFromNib() {
        super.awakeFromNib()
        topButton.layer.cornerRadius = 16
        bottonButton.layer.cornerRadius = 16
    }
}
