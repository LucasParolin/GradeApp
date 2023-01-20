//
//  StudentListScreenView.swift
//  GradeApp
//
//  Created by Lucas Parolin on 17/01/23.
//

import UIKit

class StudentListScreenView: UIView {
    
    let cellId = "cellId"
    
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: bounds)
        tableView.register(StudentTableViewCell.self, forCellReuseIdentifier: cellId)
        return tableView
    }()
    
    lazy var backgroundContainer: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.layer.cornerRadius = 20
        view.layer.masksToBounds = true
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubview() {
        addSubview(backgroundContainer)
        backgroundContainer.addSubview(tableView)
        setConstraints()
    }
    
    func setConstraints() {
                backgroundContainer.anchor(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: safeAreaLayoutGuide.bottomAnchor, trailing: safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 30, left: 20, bottom: 80, right: 20), size: .init(width: 300, height: 400))
        
        tableView.anchor(top: backgroundContainer.topAnchor, leading: backgroundContainer.leadingAnchor, bottom: backgroundContainer.bottomAnchor, trailing: backgroundContainer.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0), size: .init(width: bounds.width, height: bounds.height))
        
    }
}
