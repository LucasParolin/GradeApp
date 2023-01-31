//
//  StudentLoginController.swift
//  GradeApp
//
//  Created by Lucas Parolin on 16/01/23.
//

import UIKit

class StudentLoginController: UIViewController {
    
    let customView = TeacherLoginScreenView()
    private var loginViewModel = LoginRepositoryMock.shared
    
    override func loadView() {
        view = customView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customView.loginButton.addTarget(self, action: #selector(getLogin), for: .touchUpInside)
        
    }
    
    @objc func getLogin(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1){
            self.loginViewModel.getLogin { [weak self] login in
                
                if self?.customView.userTextField.text == login.user
                    && self?.customView.passwordTextField.text == login.password {
                    
                    self?.navigateToStudentInicialScreen()
                }else {
                    let alertController = UIAlertController(
                        title: "Erro",
                        message: "Usuário ou senha incorretos",
                        preferredStyle: .alert)
                    alertController.addAction(
                        UIAlertAction(
                            title: "OK",
                            style: .default))
                    self?.present(alertController, animated: true)
                }
            }
        }
    }
    
    @objc func navigateToStudentInicialScreen() {
        let seeMyGradesControllerCustom = StudentInicialScreenController()
        self.navigationController?.pushViewController(seeMyGradesControllerCustom, animated: true)
    }
}


