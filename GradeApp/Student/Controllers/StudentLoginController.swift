//
//  StudentLoginController.swift
//  GradeApp
//
//  Created by Lucas Parolin on 16/01/23.
//

import UIKit

class StudentLoginController: UIViewController {
    
    let studentLoginScreenCustom = StudentLoginScreen()
    let inicialScreenCustom = SeeMyGrades()
    private var loginViewModel = LoginRepositoryMock.shared

    override func loadView() {
        view = studentLoginScreenCustom
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        studentLoginScreenCustom.loginButton.addTarget(self, action: #selector(getLogin), for: .touchUpInside)
        
    }
    
    @objc func getLogin(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1){
            self.loginViewModel.getLogin { [weak self] login in
                
                if self?.studentLoginScreenCustom.userTextField.text == login.user
                    && self?.studentLoginScreenCustom.passwordTextField.text == login.password {
                    
                    self?.navigateToSeeMyGrades()
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
    
    @objc func navigateToSeeMyGrades() {
        
        let seeMyGradesControllerCustom = SeeMyGradesController()
        self.navigationController?.pushViewController(seeMyGradesControllerCustom, animated: true)
        
    }
}
