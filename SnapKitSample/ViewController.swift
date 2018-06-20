//
//  ViewController.swift
//  SnapKitSample
//
//  Created by Parunyu Intama on 20/6/2561 BE.
//  Copyright © 2561 Parunyu Intama. All rights reserved.
//

import UIKit
import SnapKit


class ViewController: UIViewController {
    
    let mainView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(white: 0.6, alpha: 0.4)
        view.layer.cornerRadius = 20
        return view
    }()
    
    let subView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.lightGray
        view.layer.cornerRadius = 20
        return view
    }()
    
    let topView: UIView =  {
        let view = UIView()
        view.backgroundColor = UIColor.lightGray
        view.layer.cornerRadius = 20
        return view
    }()
    
    let bottomView: UIView =  {
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.layer.cornerRadius = 20
        return view
      }()
    
    lazy var mainStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [topView,bottomView])
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 20
        return stackView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        setupView()
    }
    
    func setup() {
        view.backgroundColor = .white
        title = "Example 1"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    func setupView() {
        
        view.addSubview(mainView)
        mainView.addSubview(subView)
        subView.addSubview(mainStackView)
        
        
        mainView.snp.makeConstraints { (make) in
            make.topMargin.left.equalTo(20)
            make.right.bottomMargin.equalTo(-20)
    }
        
        subView.snp.makeConstraints { (make) in
            make.width.height.equalTo(300)
            make.center.equalTo(self.mainView)
        }
        
        mainStackView.snp.makeConstraints {(make) in
            make.top.left.equalTo(20)
            make.right.bottom.equalTo(-20)
    }
}
    }


