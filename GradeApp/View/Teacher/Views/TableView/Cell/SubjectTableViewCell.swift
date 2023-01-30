//
//  SubjectTableViewCell.swift
//  GradeApp
//
//  Created by Lucas Parolin on 23/01/23.
//

import UIKit

class SubjectTableViewCell: BaseCell {
    
    var subjects: Subject? {
        didSet {
            lblName.text = subjects?.subjectName
        }
    }
    
    lazy var container: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 5
        view.layer.masksToBounds = true
        view.layer.borderWidth = 2
        return view
    }()
    
    lazy var lblName: UILabel = {
        let label = UILabel()
        label.text = "Nada com nada"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()

    override func addSubviews() {
        addSubview(container)
        container.addSubview(lblName)
    }
    
    override func setConstraints() {
        container.anchor(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: safeAreaLayoutGuide.bottomAnchor, trailing: safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 5, left: 15, bottom: 5, right: 15), size: .init(width: frame.width, height: 60))
        
        lblName.anchor(top: container.topAnchor, leading: nil, bottom: container.bottomAnchor, trailing: nil, padding: .init(top: 0, left: 0, bottom: 0, right: 0), size: .init(width: 150, height: 15))
        lblName.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        lblName.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true

    }
}
