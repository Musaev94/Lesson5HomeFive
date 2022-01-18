//
//  ViewController.swift
//  Lesson5HomeFive
//
//  Created by user on 18/1/22.
//

import UIKit
import SnapKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
 
    private lazy var labelNames: UILabel = {
        let view = UILabel()
        view.font = .boldSystemFont(ofSize: 30)
        view.text = "Contacts"
        
        return view
        
    }()
    
    private lazy var button1: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("+", for: .normal)
        view.setTitleColor(.systemBlue, for: .normal)
        view.titleLabel?.font = .systemFont(ofSize: 40)
        
        return view
        
    }()
    
    private lazy var tableVieww: UITableView = {
        let view = UITableView()
        
        view.dataSource = self
        view.delegate = self
        
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        gogo()
    }
    
    var contactsName = ["Esnat", "Abu", "Adina", "Adyl", "Ademi", "Kuban", "Esnat", "Abu", "Adina", "Adyl", "Ademi", "Kuban", "Esnat", "Abu", "Adina", "Adyl", "Ademi", "Kuban"]
    
    func gogo() {
        
        view.addSubview(labelNames)
        labelNames.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(70)
            make.left.equalToSuperview().offset(20)
        }
        
        view.addSubview(tableVieww)
        tableVieww.snp.makeConstraints { make in
            make.top.equalTo(labelNames.snp.bottom).offset(40)
            make.bottom.right.left.equalToSuperview()
        }
        
        view.addSubview(button1)
        button1.addTarget(nil, action: #selector(clickButton1(view:)), for: .touchUpInside)
        button1.snp.makeConstraints { make in
            make.width.height.equalTo(50)
            make.top.equalToSuperview().offset(40)
            make.bottom.equalTo(tableVieww.snp.top).offset(-50)
            make.left.equalTo(labelNames.snp.right).offset(-160)
            make.right.equalToSuperview().offset(-10)
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactsName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let index = indexPath.row
        
        let cell = UITableViewCell()
        
        cell.textLabel?.text = contactsName[index]
        
        return cell
    }
    
    @objc func clickButton1(view: UIButton) {
        
    }


}

