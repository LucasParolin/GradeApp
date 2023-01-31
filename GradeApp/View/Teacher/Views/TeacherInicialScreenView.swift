//
//  TeacherInicialScreen.swift
//  GradeApp
//
//  Created by Lucas Parolin on 16/01/23.
//

import UIKit

class TeacherInicialScreenView: UIView{
    
    lazy var background: UIView = {
        let background = UIView()
        background.backgroundColor = .white
        return background
    }()
    
    lazy var imageLogo: UIImageView = {
        let image = UIImageView()
        image.image = UIImage (named: "mortarboard")
        return image
    }()
    
    lazy var calculateAvarageGrade: UIButton = {
        let button = UIButton()
        button.setTitle("Calcular média do aluno", for: .normal)
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 5
        button.backgroundColor = .tintColor
        return button
    }()
    
    lazy var seeAvarageStudentsGrades: UIButton = {
        let button = UIButton()
        button.setTitle("Ver as médias da turma", for: .normal)
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 5
        button.backgroundColor = .tintColor
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
        addSubview(imageLogo)
        addSubview(calculateAvarageGrade)
        addSubview(seeAvarageStudentsGrades)
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
        
        imageLogo.anchor(
            top: background.topAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 220, left: 0, bottom: 0, right: 0),
            size: .init(width: 180, height: 180))
        imageLogo.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        calculateAvarageGrade.anchor(
            top: imageLogo.bottomAnchor,
            leading: background.leadingAnchor,
            bottom: nil,
            trailing: background.trailingAnchor,
            padding: .init(top: 60, left: 60, bottom: 0, right: 60),
            size: .init(width: 0, height: 40))
        calculateAvarageGrade.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        seeAvarageStudentsGrades.anchor(
            top: calculateAvarageGrade.bottomAnchor,
            leading: background.leadingAnchor,
            bottom: nil,
            trailing: background.trailingAnchor,
            padding: .init(top: 20, left: 60, bottom: 0, right: 60),
            size: .init(width: 0, height: 40))
        seeAvarageStudentsGrades.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
    }
}
