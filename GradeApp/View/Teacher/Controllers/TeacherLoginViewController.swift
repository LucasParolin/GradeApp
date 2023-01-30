//
//  LoginViewController.swift
//  GradeApp
//
//  Created by Lucas Parolin on 13/01/23.
//

import UIKit

class TeacherLoginViewController: UITableViewController {
    
    let customView = TeacherLoginScreenView()
    private var loginViewModel = LoginRepositoryMock.shared
    
    var loginInstance: Login?
    
    override func loadView() {
        view = customView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customView.loginButton.addTarget(self, action: #selector(getLogin), for: .touchUpInside)
        
    }
    
    func receiveLogin(data: Login) {
        loginInstance = data
    }
    
    @objc func getLogin(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1){
            self.loginViewModel.getLogin { [weak self] login in
                
                if self?.customView.userTextField.text == login.user
                    && self?.customView.passwordTextField.text == login.password {
                    
                    self?.navigateToInicialScreen()
                }else {
                    
                    let alertController = UIAlertController(title: "Erro", message: "Usuário ou senha incorretos", preferredStyle: .alert)
                            
                    let OKAction = UIAlertAction(title: "OK", style: .default) { (action) in
                            }
                            alertController.addAction(OKAction)
                    self?.present(alertController, animated: true)
                }
            }
        }
    }
    
    @objc func navigateToInicialScreen() {
        let teacherInicialScreenCustom = TeacherInicialViewController()
        self.navigationController?.pushViewController(teacherInicialScreenCustom, animated: true)
    }
}
