//
//  CommondCell.swift
//  ScrollView
//
//  Created by Andrey Bezrukov on 24.02.2023.
//

import UIKit

class CommondCell: UICollectionViewCell {
    // MARK: - IBOutlet
    @IBOutlet private weak var iconImageView: UIImageView!
    @IBOutlet private weak var textLabel: UILabel!
    @IBOutlet private weak var closeButton: UIButton!
    
    // MARK: - Public
    func configure(icon: UIImage?, text: String) {
        iconImageView.image = icon
        textLabel.text = text
    }
    
    // MARK: - View lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        contentView.layer.cornerRadius = 16
    }
}
