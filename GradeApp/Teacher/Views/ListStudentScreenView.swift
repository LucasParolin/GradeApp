//
//  ListStudentScreenView.swift
//  GradeApp
//
//  Created by Lucas Parolin on 17/01/23.
//

import UIKit

class ListStudentScreenView: UIView {
    
    lazy var backgroundContainer: UIView = {
        let view = UIView()
        view.backgroundColor = .white
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
        setConstraints()
    }
    
    func setConstraints() {
        backgroundContainer.anchor(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: safeAreaLayoutGuide.bottomAnchor, trailing: safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 30, left: 20, bottom: 80, right: 20), size: .init(width: 300, height: 400))
    }
}
