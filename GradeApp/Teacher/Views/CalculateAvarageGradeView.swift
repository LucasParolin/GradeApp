//
//  CalculateAvarageGradeView.swift
//  GradeApp
//
//  Created by Lucas Parolin on 17/01/23.
//

import UIKit

class CalculateAvarageGradeView:UIView {
    
    lazy var background: UIView = {
        let background = UIView()
        background.backgroundColor = UIColor(red: 0.42, green: 0.51, blue: 0.62, alpha: 1.00)
        return background
    }()
    
    lazy var selectStudent: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = UIColor(red: 0.18, green: 0.25, blue: 0.35, alpha: 1.00)
        textField.attributedPlaceholder = NSAttributedString(
            string: "  Clique para selecionar o aluno",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 0.93, green: 0.93, blue: 0.91, alpha: 0.60)])
        textField.layer.masksToBounds = true
        textField.layer.cornerRadius = 5
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor(red: 0.93, green: 0.93, blue: 0.91, alpha: 0.80).cgColor
        return textField
    }()
    
    lazy var firstStudentGradeTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = UIColor(red: 0.18, green: 0.25, blue: 0.35, alpha: 1.00)
        textField.attributedPlaceholder = NSAttributedString(
            string: "  Insira a primeira nota do aluno",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 0.93, green: 0.93, blue: 0.91, alpha: 0.60)])
        textField.layer.masksToBounds = true
        textField.layer.cornerRadius = 5
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor(red: 0.93, green: 0.93, blue: 0.91, alpha: 0.80).cgColor
        return textField
    }()
        
    lazy var secondStudentGradeTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = UIColor(red: 0.18, green: 0.25, blue: 0.35, alpha: 1.00)
        textField.attributedPlaceholder = NSAttributedString(
            string: "  Insira a segunda nota do aluno",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 0.93, green: 0.93, blue: 0.91, alpha: 0.60)])
        textField.layer.masksToBounds = true
        textField.layer.cornerRadius = 5
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor(red: 0.93, green: 0.93, blue: 0.91, alpha: 0.80).cgColor
        return textField
    }()
        
    lazy var thirdStudentGradeTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = UIColor(red: 0.18, green: 0.25, blue: 0.35, alpha: 1.00)
        textField.attributedPlaceholder = NSAttributedString(
            string: "  Insira a terceira nota do aluno",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 0.93, green: 0.93, blue: 0.91, alpha: 0.60)])
        textField.layer.masksToBounds = true
        textField.layer.cornerRadius = 5
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor(red: 0.93, green: 0.93, blue: 0.91, alpha: 0.80).cgColor
        return textField
    }()
    
    lazy var fourthStudentGradeTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = UIColor(red: 0.18, green: 0.25, blue: 0.35, alpha: 1.00)
        textField.attributedPlaceholder = NSAttributedString(
            string: "  Insira a quarta nota do aluno",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 0.93, green: 0.93, blue: 0.91, alpha: 0.60)])
        textField.layer.masksToBounds = true
        textField.layer.cornerRadius = 5
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor(red: 0.93, green: 0.93, blue: 0.91, alpha: 0.80).cgColor
        return textField
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
        addSubview(selectStudent)
        addSubview(firstStudentGradeTextField)
        addSubview(secondStudentGradeTextField)
        addSubview(thirdStudentGradeTextField)
        addSubview(fourthStudentGradeTextField)
        addConstraints()
    }
    func addConstraints(){
        
        background.anchor(
            top: self.topAnchor,
            leading: self.leadingAnchor,
            bottom: self.bottomAnchor,
            trailing: self.trailingAnchor,
            padding: .init(top: 0, left: 0, bottom: 0, right: 0),
            size: .init(width: 0, height: 0))
        
        selectStudent.anchor(
            top: nil,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 300, left: 0, bottom: 0, right: 0),
            size: .init(width: 300, height: 60))
        selectStudent.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        firstStudentGradeTextField.anchor(
            top: selectStudent.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 30, left: 0, bottom: 0, right: 0),
            size: .init(width: 300, height: 60))
        firstStudentGradeTextField.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
                
        secondStudentGradeTextField.anchor(
            top: firstStudentGradeTextField.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 30, left: 0, bottom: 0, right: 0),
            size: .init(width: 300, height: 60))
        secondStudentGradeTextField.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        secondStudentGradeTextField.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
                
        thirdStudentGradeTextField.anchor(
            top: secondStudentGradeTextField.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 30, left: 0, bottom: 0, right: 0),
            size: .init(width: 300, height: 60))
        thirdStudentGradeTextField.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
                        
        fourthStudentGradeTextField.anchor(
            top: thirdStudentGradeTextField.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 30, left: 0, bottom: 0, right: 0),
            size: .init(width: 300, height: 60))
        fourthStudentGradeTextField.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
    }
}
