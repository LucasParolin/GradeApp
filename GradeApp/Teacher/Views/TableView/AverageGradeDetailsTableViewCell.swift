//
//  AverageGradeDetailsTableViewCell.swift
//  GradeApp
//
//  Created by Lucas Parolin on 25/01/23.
//

import UIKit

class AverageGradeDetailsTableViewCell: BaseCell {
    
    var avarageGradeDetails: AvarageGradeDetails? {
        didSet {
            lblName.text = avarageGradeDetails?.student
            lblSubject.text = avarageGradeDetails?.subject
            lblAverageGrade.text = avarageGradeDetails?.averageGrade
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
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()
    
    lazy var lblSubject: UILabel = {
        let label = UILabel()
        label.text = "Nada com nada"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()
    
    lazy var lblAverageGrade: UILabel = {
        let label = UILabel()
        label.text = "Nada com nada"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()

    override func addSubviews() {
        addSubview(container)
        container.addSubview(lblName)
        container.addSubview(lblSubject)
        container.addSubview(lblAverageGrade)
    }
    
    override func setConstraints() {
        container.anchor(
            top: safeAreaLayoutGuide.topAnchor,
            leading: safeAreaLayoutGuide.leadingAnchor,
            bottom: safeAreaLayoutGuide.bottomAnchor,
            trailing: safeAreaLayoutGuide.trailingAnchor,
            padding: .init(top: 5, left: 15, bottom: 5, right: 15),
            size: .init(width: frame.width, height: 65))
        
        lblName.anchor(
            top: container.topAnchor,
            leading: container.leadingAnchor,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 10, left: 10, bottom: 0, right: 0),
            size: .init(width: 150, height: 20))
        
        lblSubject.anchor(
            top: nil,
            leading: container.leadingAnchor,
            bottom: container.bottomAnchor,
            trailing: nil,
            padding: .init(top: 0, left: 10, bottom: 10, right: 0),
            size: .init(width: 150, height: 20))

        lblAverageGrade.anchor(
            top: container.topAnchor,
            leading: nil,
            bottom: container.bottomAnchor,
            trailing: container.trailingAnchor,
            padding: .init(top: 0, left: 0, bottom: 0, right: 2),
            size: .init(width: 150, height: 15))
        lblAverageGrade.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true


    }
}
