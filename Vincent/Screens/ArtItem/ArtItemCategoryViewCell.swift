//
//  ArtItemCategoryViewCellController.swift
//  Vincent
//
//  Created by 김연호 on 2022/10/12.
//

import UIKit

import SnapKit
import Then

final class ArtItemCategoryCell: UICollectionViewCell {

    let artItemCategoryLabel = UILabel().then {
        $0.layer.borderWidth = 1
        $0.layer.borderColor = UIColor.mainBlack.cgColor
        $0.layer.cornerRadius = 15
        $0.font = .preferredFont(forTextStyle: .callout, weight: .semibold)
        $0.textColor = .black
        $0.backgroundColor = .clear
        $0.textAlignment = .center
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        configUI()
        render()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func configUI() {
        contentView.clipsToBounds = true
//        contentView.backgroundColor = .clear

        contentView.addSubview(artItemCategoryLabel)
        
    }

    private func render() {
        contentView.addSubview(artItemCategoryLabel)

        artItemCategoryLabel.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }

    override var isSelected: Bool {
        didSet {
            if isSelected {
                self.artItemCategoryLabel.layer.backgroundColor = UIColor.mainBlack.cgColor
                self.artItemCategoryLabel.textColor = .white
            } else {
                self.artItemCategoryLabel.layer.backgroundColor = UIColor.clear.cgColor
                self.artItemCategoryLabel.textColor = .mainBlack
            }
        }
    }
}


extension ArtItemCategoryCell: ReusableView {
    static var identifier: String {
        return String(describing: self)
    }
}

