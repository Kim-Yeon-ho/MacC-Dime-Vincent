//
//  ArtItemViewController.swift
//  Vincent
//
//  Created by 김연호 on 2022/10/12.
//

import UIKit

import SnapKit
import Then

class ArtItemViewController: BaseViewController {

    private let wallPaper = UIImageView().then {
        $0.image = UIImage(named: "wallpaperNone")
        $0.contentMode = .scaleAspectFit
    }

    private let searchView = UIView().then {
        $0.backgroundColor = .white
        $0.layer.cornerRadius = 10
    }

    private let magniImage = UIImageView().then {
        $0.tintColor = .systemGray
        $0.image = UIImage(systemName: "magnifyingglass")
    }

    private let searchTextField = UITextField().then {
        $0.font = UIFont.preferredFont(forTextStyle: .caption1, weight: .regular)
        $0.textColor = .systemGray
        $0.backgroundColor = .clear
        $0.placeholder = "윈저앤뉴튼, 홀베인, 클레이트 등"
    }

    private let artItemCount = UILabel().then {
        $0.backgroundColor = .white
        $0.font = .preferredFont(forTextStyle: .callout, weight: .medium)
        $0.text = "상품00개"
    }

    private let artItemCategoryListView = ArtItemCategoryView()

    private let artItemCollectionView = ArtItemCollectionView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        render()
    }

    override func render() {

        view.addSubviews(wallPaper,searchView, magniImage, searchTextField, artItemCount)
        view.addSubview(artItemCategoryListView)
        view.addSubview(artItemCollectionView)

        wallPaper.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }

        searchView.snp.makeConstraints {
            $0.leading.equalTo(view.snp.leading).offset(60)
            $0.trailing.equalTo(view.snp.trailing).inset(20)
            $0.top.equalTo(view.safeAreaLayoutGuide).offset(10)
            $0.height.equalTo(40)
        }

        magniImage.snp.makeConstraints {
            $0.leading.equalTo(searchView.snp.leading).inset(10)
            $0.centerY.equalTo(searchView.snp.centerY)
        }

        searchTextField.snp.makeConstraints {
            $0.leading.equalTo(magniImage.snp.trailing).offset(5)
            $0.top.equalTo(searchView.snp.top).offset(7)
            $0.bottom.equalTo(searchView.snp.bottom).inset(7)
        }

        artItemCount.snp.makeConstraints {
            $0.leading.equalTo(view.snp.leading).offset(20)
            $0.top.equalTo(artItemCategoryListView.snp.bottom).offset(15)
        }

        artItemCategoryListView.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview()
            $0.top.equalTo(searchView.snp.bottom).offset(20)
            $0.height.equalTo(190)
        }

        artItemCollectionView.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview()
            $0.top.equalTo(artItemCategoryListView.snp.bottom).offset(30)
            $0.bottom.equalTo(view.snp.bottom)
        }

    }
}
