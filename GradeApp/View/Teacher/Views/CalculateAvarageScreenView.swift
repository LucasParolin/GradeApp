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
        background.backgroundColor = .white
        return background
    }()
    
    lazy var selectStudent: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Clique para selecionar o aluno"
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    lazy var selectSubject: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Clique para selecionar a matéria"
        textField.borderStyle = .roundedRect

        return textField
    }()
    
    lazy var firstStudentGradeTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Insira a primeira nota do aluno"
        textField.borderStyle = .roundedRect
        return textField
    }()
        
    lazy var secondStudentGradeTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Insira a segunda nota do aluno"
        textField.borderStyle = .roundedRect
        return textField
    }()
        
    lazy var thirdStudentGradeTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Insira a terceira nota do aluno"
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    lazy var fourthStudentGradeTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Insira a quarta nota do aluno"
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    lazy var calculateAvarageStudentsGrades: UIButton = {
        let button = UIButton()
        button.setTitle("Calcular média", for: .normal)
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
            top: safeAreaLayoutGuide.topAnchor,
            leading: safeAreaLayoutGuide.leadingAnchor,
            bottom: nil,
            trailing: safeAreaLayoutGuide.trailingAnchor,
            padding: .init(top: 140, left: 20, bottom: 0, right: 20),
            size: .init(width: 0, height: 0))
        selectStudent.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
            
        selectSubject.anchor(
            top: selectStudent.bottomAnchor,
            leading: selectStudent.leadingAnchor,
            bottom: nil,
            trailing: selectStudent.trailingAnchor,
            padding: .init(top: 5, left: 0, bottom: 0, right: 0),
            size: .init(width: 0, height: 0))
        selectSubject.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        firstStudentGradeTextField.anchor(
            top: selectSubject.bottomAnchor,
            leading: selectStudent.leadingAnchor,
            bottom: nil,
            trailing: selectStudent.trailingAnchor,
            padding: .init(top: 30, left: 0, bottom: 0, right: 0),
            size: .init(width: 0, height: 0))
        firstStudentGradeTextField.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
                
        secondStudentGradeTextField.anchor(
            top: firstStudentGradeTextField.bottomAnchor,
            leading: selectStudent.leadingAnchor,
            bottom: nil,
            trailing: selectStudent.trailingAnchor,
            padding: .init(top: 30, left: 0, bottom: 0, right: 0),
            size: .init(width: 0, height: 0))
        secondStudentGradeTextField.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
                
        thirdStudentGradeTextField.anchor(
            top: secondStudentGradeTextField.bottomAnchor,
            leading: selectStudent.leadingAnchor,
            bottom: nil,
            trailing: selectStudent.trailingAnchor,
            padding: .init(top: 30, left: 0, bottom: 0, right: 0),
            size: .init(width: 0, height: 0))
        thirdStudentGradeTextField.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
                        
        fourthStudentGradeTextField.anchor(
            top: thirdStudentGradeTextField.bottomAnchor,
            leading: selectStudent.leadingAnchor,
            bottom: nil,
            trailing: selectStudent.trailingAnchor,
            padding: .init(top: 30, left: 0, bottom: 0, right: 0),
            size: .init(width: 0, height: 0))
        fourthStudentGradeTextField.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
                         
        calculateAvarageStudentsGrades.anchor(
            top: fourthStudentGradeTextField.bottomAnchor,
            leading: selectStudent.leadingAnchor,
            bottom: nil,
            trailing: selectStudent.trailingAnchor,
            padding: .init(top: 40, left: 30, bottom: 0, right: 30),
            size: .init(width: 0, height: 0))
        calculateAvarageStudentsGrades.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
    }
}
