//
//  SellSelectView.swift
//  Vincent
//
//  Created by KYUBO A. SHIM on 2022/10/09.
//

import UIKit
import SnapKit
import Then

class SellSelectView: UIView {
    
    let selectButtonTitle = UILabel().then {
        $0.font = UIFont.preferredFont(forTextStyle: .body, weight: .semibold)
        $0.textColor = UIColor(white: 0, alpha: 0.8)
        $0.text = "카테고리 선택 *"
    }
    
    let chevronImage = UIImageView().then {
        $0.sizeToFit()
        $0.image = UIImage(systemName: "chevron.forward")
        $0.tintColor = .black
    }
    
    let dividerView = UIView().then {
        $0.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.3)
    }
    
    private let stackView = UIStackView().then {
        $0.distribution = .equalCentering
        $0.axis = .horizontal
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        updateConstraints()
    }
    
    override func updateConstraints() {
        render()
        super.updateConstraints()
    }
    
    func render() {
        
        stackView.addArrangedSubview(selectButtonTitle)
        stackView.addArrangedSubview(chevronImage)
        
        self.addSubview(stackView)
        self.addSubview(dividerView)
        
        stackView.snp.makeConstraints {
            $0.top.left.equalToSuperview()
            $0.right.equalToSuperview().inset(20)
            $0.bottom.equalToSuperview().inset(20)
        }
        
        selectButtonTitle.snp.makeConstraints {
            $0.top.equalToSuperview().inset(20)
            $0.left.equalToSuperview().inset(24)
        }
        
        chevronImage.snp.makeConstraints {
            $0.top.equalToSuperview().inset(15)
        }
        
        dividerView.snp.makeConstraints {
            $0.height.equalTo(1)
            $0.left.right.equalToSuperview().inset(20)
            $0.top.equalTo(self.stackView.snp.bottom).offset(10)
        }
    }
    
    func configUI() {
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
