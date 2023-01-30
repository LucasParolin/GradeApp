//
//  CalculateAvarageGradeView.swift
//  GradeApp
//
//  Created by Lucas Parolin on 17/01/23.
//

import UIKit

class CalculateAvarageScreenView: UIView {
    
    lazy var background: UIView = {
        let background = UIView()
        background.backgroundColor = UIColor(red: 0.42, green: 0.51, blue: 0.62, alpha: 1.00)
        return background
    }()
    
    lazy var selectStudent: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = UIColor(red: 0.18, green: 0.25, blue: 0.35, alpha: 1.00)
        textField.attributedPlaceholder = NSAttributedString(
            string: " Clique para selecionar o aluno",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 0.93, green: 0.93, blue: 0.91, alpha: 1.00)])
        textField.layer.masksToBounds = true
        textField.layer.cornerRadius = 5
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor(red: 0.93, green: 0.93, blue: 0.91, alpha: 0.80).cgColor
        textField.textColor = .white
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: textField.frame.height))
        textField.leftViewMode = .always
        return textField
    }()
    
    lazy var selectSubject: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = UIColor(red: 0.18, green: 0.25, blue: 0.35, alpha: 1.00)
        textField.attributedPlaceholder = NSAttributedString(
            string: "Clique para selecionar a matéria",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 0.93, green: 0.93, blue: 0.91, alpha: 1.00)])
        textField.layer.masksToBounds = true
        textField.layer.cornerRadius = 5
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor(red: 0.93, green: 0.93, blue: 0.91, alpha: 0.80).cgColor
        textField.textColor = .white
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: textField.frame.height))
        textField.leftViewMode = .always
        return textField
    }()
    
    lazy var firstStudentGradeTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = UIColor(red: 0.18, green: 0.25, blue: 0.35, alpha: 1.00)
        textField.attributedPlaceholder = NSAttributedString(
            string: "Insira a primeira nota do aluno",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 0.93, green: 0.93, blue: 0.91, alpha: 0.60)])
        textField.layer.masksToBounds = true
        textField.layer.cornerRadius = 5
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor(red: 0.93, green: 0.93, blue: 0.91, alpha: 0.80).cgColor
        textField.textColor = .white
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: textField.frame.height))
        textField.leftViewMode = .always
        return textField
    }()
        
    lazy var secondStudentGradeTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = UIColor(red: 0.18, green: 0.25, blue: 0.35, alpha: 1.00)
        textField.attributedPlaceholder = NSAttributedString(
            string: "Insira a segunda nota do aluno",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 0.93, green: 0.93, blue: 0.91, alpha: 0.60)])
        textField.layer.masksToBounds = true
        textField.layer.cornerRadius = 5
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor(red: 0.93, green: 0.93, blue: 0.91, alpha: 0.80).cgColor
        textField.textColor = .white
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: textField.frame.height))
        textField.leftViewMode = .always
        return textField
    }()
        
    lazy var thirdStudentGradeTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = UIColor(red: 0.18, green: 0.25, blue: 0.35, alpha: 1.00)
        textField.attributedPlaceholder = NSAttributedString(
            string: "Insira a terceira nota do aluno",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 0.93, green: 0.93, blue: 0.91, alpha: 0.60)])
        textField.layer.masksToBounds = true
        textField.layer.cornerRadius = 5
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor(red: 0.93, green: 0.93, blue: 0.91, alpha: 0.80).cgColor
        textField.textColor = .white
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: textField.frame.height))
        textField.leftViewMode = .always
        return textField
    }()
    
    lazy var fourthStudentGradeTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = UIColor(red: 0.18, green: 0.25, blue: 0.35, alpha: 1.00)
        textField.attributedPlaceholder = NSAttributedString(
            string: "Insira a quarta nota do aluno",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 0.93, green: 0.93, blue: 0.91, alpha: 0.60)])
        textField.layer.masksToBounds = true
        textField.layer.cornerRadius = 5
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor(red: 0.93, green: 0.93, blue: 0.91, alpha: 0.80).cgColor
        textField.textColor = .white
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: textField.frame.height))
        textField.leftViewMode = .always
        return textField
    }()
    
    lazy var calculateAvarageStudentsGrades: UIButton = {
        let button = UIButton()
        button.setTitle("Calcular média", for: .normal)
        button.setTitleColor(UIColor(red: 0.93, green: 0.93, blue: 0.91, alpha: 0.90), for: .normal)
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
        addSubview(selectStudent)
        addSubview(selectSubject)
        addSubview(firstStudentGradeTextField)
        addSubview(secondStudentGradeTextField)
        addSubview(thirdStudentGradeTextField)
        addSubview(fourthStudentGradeTextField)
        addSubview(calculateAvarageStudentsGrades)
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
            top: background.topAnchor,
            leading: background.leadingAnchor,
            bottom: nil,
            trailing: background.trailingAnchor,
            padding: .init(top: 160, left: 60, bottom: 0, right: 60),
            size: .init(width: 300, height: 45))
        selectStudent.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
            
        selectSubject.anchor(
            top: selectStudent.bottomAnchor,
            leading: selectStudent.leadingAnchor,
            bottom: nil,
            trailing: selectStudent.trailingAnchor,
            padding: .init(top: 5, left: 0, bottom: 0, right: 0),
            size: .init(width: 300, height: 45))
        selectSubject.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        firstStudentGradeTextField.anchor(
            top: selectSubject.bottomAnchor,
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
                         
        calculateAvarageStudentsGrades.anchor(
            top: fourthStudentGradeTextField.bottomAnchor,
            leading: selectStudent.leadingAnchor,
            bottom: nil,
            trailing: selectStudent.trailingAnchor,
            padding: .init(top: 40, left: 0, bottom: 0, right: 0),
            size: .init(width: 300, height: 60))
        calculateAvarageStudentsGrades.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
    }
}
