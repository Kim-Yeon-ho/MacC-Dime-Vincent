//
//  ArtItemCategoryModalViewCell.swift
//  Vincent
//
//  Created by 김연호 on 2022/10/13.
//

import UIKit

import SnapKit
import Then

final class ArtItemCategoryModalViewCell: BaseCollectionViewCell {
    
    private enum Constants {
        // MARK: contentView layout constants
        static let contentViewCornerRadius: CGFloat = 4.0

        // MARK: profileImageView layout constants
        static let imageHeight: CGFloat = 180.0

        // MARK: Generic layout constants
        static let verticalSpacing: CGFloat = 8.0
        static let horizontalPadding: CGFloat = 16.0
        static let profileDescriptionVerticalPadding: CGFloat = 10.0
    }

    let artCategoryModalLabel = UILabel().then {
        $0.textAlignment = .center
        $0.layer.cornerRadius = 10
        $0.backgroundColor = .clear
        $0.textColor = .black
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        render()
        configUI()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func render() {
        
    }

    override func configUI() {

    }
}
