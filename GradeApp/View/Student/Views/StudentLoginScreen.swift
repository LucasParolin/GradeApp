//
//  StudentLoginScreen.swift
//  GradeApp
//
//  Created by Lucas Parolin on 16/01/23.
//

import UIKit

class StudentLoginScreen: UIView {
    
    lazy var background: UIView = {
        let background = UIView()
        background.backgroundColor = UIColor(red: 0.42, green: 0.51, blue: 0.62, alpha: 1.00)
        return background
    }()
    
    lazy var imageLogo: UIImageView = {
        let image = UIImageView()
        image.image = UIImage (named: "education")
        return image
    }()
    
    lazy var userTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = UIColor(red: 0.18, green: 0.25, blue: 0.35, alpha: 1.00)
        textField.attributedPlaceholder = NSAttributedString(
            string: "Insira seu nome de usuário",
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
    
    lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = UIColor(red: 0.18, green: 0.25, blue: 0.35, alpha: 1.00)
        textField.attributedPlaceholder = NSAttributedString(
            string: "Insira seu nome de usuário",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 0.93, green: 0.93, blue: 0.91, alpha: 0.60)])
        textField.layer.masksToBounds = true
        textField.layer.cornerRadius = 5
        textField.isSecureTextEntry = true
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor(red: 0.93, green: 0.93, blue: 0.91, alpha: 0.80).cgColor
        textField.textColor = .white
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: textField.frame.height))
        textField.leftViewMode = .always
        return textField
    }()
    
    lazy var forgotPasswordButton: UIButton = {
        let button = UIButton()
        button.setTitle("Esqueci minha senha", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        button.setTitleColor(.white, for: .normal)
        button.setTitleShadowColor(.black, for: .normal)
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 5
        return button
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
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
            size: .init(width: 60, height: 40))
        userTextField.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        passwordTextField.anchor(
            top: userTextField.bottomAnchor,
            leading: userTextField.leadingAnchor,
            bottom: nil,
            trailing: userTextField.trailingAnchor,
            padding: .init(top: 15, left: 0, bottom: 0, right: 0),
            size: .init(width: 60, height: 40))
        passwordTextField.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        forgotPasswordButton.anchor(
            top: passwordTextField.bottomAnchor,
            leading: passwordTextField.leadingAnchor,
            bottom: nil,
            trailing: passwordTextField.trailingAnchor,
            padding: .init(top: 0, left: 120, bottom: 0, right: 0),
            size: .init(width: 65, height: 22))
        forgotPasswordButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        
        loginButton.anchor(
            top: passwordTextField.bottomAnchor,
            leading: passwordTextField.leadingAnchor,
            bottom: nil,
            trailing: passwordTextField.trailingAnchor,
            padding: .init(top: 40, left: 20, bottom: 0, right: 20),
            size: .init(width: 60, height: 40))
        loginButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    }
}
