//
//  AverageGradeDetailsScreenView.swift
//  GradeApp
//
//  Created by Lucas Parolin on 25/01/23.
//

import UIKit

class AverageDetailsScreenView: UIView {
    
    let cellId = "cellId"
    
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: bounds)
        tableView.register(AverageDetailsTableViewCell.self, forCellReuseIdentifier: cellId)
        return tableView
    }()
    
    lazy var backgroundContainer: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.layer.cornerRadius = 20
        view.layer.masksToBounds = true
        return view
    }()
    
    lazy var calculateAgain: UIButton = {
        let button = UIButton()
        button.setTitle("Calcular outra média", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .white
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 5
        button.layer.borderWidth = 2
//        button.layer.borderColor = UIColor(red: 0.93, green: 0.93, blue: 0.91, alpha: 0.80).cgColor
        return button
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
        backgroundContainer.addSubview(calculateAgain)
        setConstraints()
    }
    
    func setConstraints() {
        backgroundContainer.anchor(
            top: safeAreaLayoutGuide.topAnchor,
            leading: safeAreaLayoutGuide.leadingAnchor,
            bottom: safeAreaLayoutGuide.bottomAnchor,
            trailing: safeAreaLayoutGuide.trailingAnchor,
            padding: .init(top: 30, left: 20, bottom: 80, right: 20),
            size: .init(width: 300, height: 400))
        
        tableView.anchor(
            top: backgroundContainer.topAnchor,
            leading: backgroundContainer.leadingAnchor,
            bottom: backgroundContainer.bottomAnchor,
            trailing: backgroundContainer.trailingAnchor,
            padding: .init(top: 0, left: 0, bottom: 0, right: 0),
            size: .init(width: bounds.width, height: bounds.height))
        
        calculateAgain.anchor(
            top: nil,
            leading: nil,
            bottom: tableView.bottomAnchor,
            trailing: nil,
            padding: .init(top: 0, left: 0, bottom: 10, right: 0),
            size: .init(width: 200, height: 60))
        calculateAgain.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true

    }
}
