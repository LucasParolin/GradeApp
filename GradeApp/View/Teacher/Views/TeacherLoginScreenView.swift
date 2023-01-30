//
//  LoginScreen.swift
//  GradeApp
//
//  Created by Lucas Parolin on 13/01/23.
//

import UIKit

class TeacherLoginScreenView: UIView {
    
    lazy var background: UIView = {
        let background = UIView()
        background.backgroundColor = .white
        return background
    }()
    
    lazy var imageLogo: UIImageView = {
        let image = UIImageView()
        image.image = UIImage (named: "education")
        return image
    }()
    
    lazy var userTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Insira seu nome de usuário"
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Insira sua senha"
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    lazy var forgotPasswordButton: UIButton = {
        let button = UIButton()
        button.setTitle("Esqueci minha senha", for: .normal)
        button.setTitleColor(.systemGray2, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        return button
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 5
        button.backgroundColor = .tintColor
        return button
    }()
    
    lazy var registerButton: UIButton = {
        let button = UIButton()
        button.setTitle("Cadastrar", for: .normal)
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
    
    func addSubviews() {
        addSubview(background)
        addSubview(imageLogo)
        addSubview(userTextField)
        addSubview(passwordTextField)
        addSubview(loginButton)
        addSubview(forgotPasswordButton)
        addConstrains()
    }
    
    func addConstrains() {
        
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
            padding: .init(top: 150, left: 0, bottom: 0, right: 0),
            size: .init(width: 180, height: 180))
        imageLogo.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        
        userTextField.anchor(
            top: imageLogo.bottomAnchor,
            leading: background.leadingAnchor,
            bottom: nil,
            trailing: background.trailingAnchor,
            padding: .init(top: 50, left: 60, bottom: 0, right: 60),
            size: .init(width: 0, height: 0))
        userTextField.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        passwordTextField.anchor(
            top: userTextField.bottomAnchor,
            leading: userTextField.leadingAnchor,
            bottom: nil,
            trailing: userTextField.trailingAnchor,
            padding: .init(top: 15, left: 0, bottom: 0, right: 0),
            size: .init(width: 0, height: 0))
        passwordTextField.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        forgotPasswordButton.anchor(
            top: passwordTextField.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: passwordTextField.trailingAnchor,
            padding: .init(top: 0, left: 0, bottom: 0, right: 0),
            size: .init(width: 0, height: 0))
        
        loginButton.anchor(
            top: passwordTextField.bottomAnchor,
            leading: passwordTextField.leadingAnchor,
            bottom: nil,
            trailing: passwordTextField.trailingAnchor,
            padding: .init(top: 50, left: 20, bottom: 0, right: 20),
            size: .init(width: 0, height: 0))
        loginButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    }
}
