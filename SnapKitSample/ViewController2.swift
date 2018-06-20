//
//  ViewController2.swift
//  SnapKitSample
//
//  Created by Parunyu Intama on 20/6/2561 BE.
//  Copyright © 2561 Parunyu Intama. All rights reserved.
//

import UIKit
import SnapKit

class ViewController2: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    let tableView: UITableView = {
        let table = UITableView()
        table.rowHeight = 100
        return table
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        setupView()
    }
    
    func setup() {
        view.backgroundColor = .white
        title = "Example 2"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 8
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: CustomCell.customCell, for: indexPath) as! CustomCell
            
            return cell
        }
    
    func setupView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CustomCell.self, forCellReuseIdentifier: CustomCell.customCell)
        self.view.addSubview(tableView)
        tableView.snp.makeConstraints{ (make) in
            make.edges.equalTo(self.view)
        }
}


    
    
    
    
    
class CustomCell: UITableViewCell {
    
    static var customCell = "cell"
    
    let customImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "image")
        iv.contentMode = .scaleToFill
        iv.layer.cornerRadius = 20
        iv.layer.masksToBounds = true
        return iv
        }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style,reuseIdentifier: reuseIdentifier)
        self.backgroundColor = .white
        setupViews()
    }
    
    func setupViews() {
        self.addSubview(customImageView)
        customImageView.snp.makeConstraints{(make) in
        make.top.left.equalTo(20)
        make.right.bottom.equalTo(-20)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
    }
