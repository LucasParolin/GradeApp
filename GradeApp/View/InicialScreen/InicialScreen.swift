//
//  InicialScreen.swift
//  GradeApp
//
//  Created by Lucas Parolin on 16/01/23.
//

import UIKit

class InicialScreen: UIView {
    
    lazy var background: UIView = {
        let background = UIView()
        background.backgroundColor = UIColor(red: 0.42, green: 0.51, blue: 0.62, alpha: 1.00)
        return background
    }()
    
    lazy var teacherButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sou professor", for: .normal)
        button.setTitleColor(UIColor(red: 0.93, green: 0.93, blue: 0.91, alpha: 0.80), for: .normal)
        button.backgroundColor = UIColor(red: 0.18, green: 0.25, blue: 0.35, alpha: 1.00)
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 5
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor(red: 0.93, green: 0.93, blue: 0.91, alpha: 0.80).cgColor
        return button
    }()
    
    lazy var studentButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sou aluno", for: .normal)
        button.setTitleColor(UIColor(red: 0.93, green: 0.93, blue: 0.91, alpha: 0.80), for: .normal)
        button.backgroundColor = UIColor(red: 0.18, green: 0.25, blue: 0.35, alpha: 1.00)
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 5
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor(red: 0.93, green: 0.93, blue: 0.91, alpha: 0.80).cgColor
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubviews(){
        addSubview(background)
        addSubview(teacherButton)
        addSubview(studentButton)
        addConstrains()
    }
    
    func addConstrains(){
        
        background.anchor(
            top: self.topAnchor,
            leading: self.leadingAnchor,
            bottom: self.bottomAnchor,
            trailing: self.trailingAnchor,
            padding: .init(top: 0, left: 0, bottom: 0, right: 0),
            size: .init(width: 0, height: 0))
        
        teacherButton.anchor(
            top: background.topAnchor,
            leading: background.leadingAnchor,
            bottom: nil,
            trailing: background.trailingAnchor,
            padding: .init(top: 350, left: 60, bottom: 0, right: 60),
            size: .init(width: 60, height: 60))
        teacherButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        studentButton.anchor(
            top: teacherButton.bottomAnchor,
            leading: teacherButton.leadingAnchor,
            bottom: nil,
            trailing: teacherButton.trailingAnchor,
            padding: .init(top: 20, left: 0, bottom: 0, right: 0),
            size: .init(width: 60, height: 60))
        studentButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true

        
        
    }
}
