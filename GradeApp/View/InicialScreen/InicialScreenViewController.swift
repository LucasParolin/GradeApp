//
//  InicialScreenController.swift
//  GradeApp
//
//  Created by Lucas Parolin on 16/01/23.
//

import UIKit

class InicialScreenViewController: UIViewController {
    
    let inicialScreenCustom = InicialScreen()
    let teacherLoginScreenCustom = TeacherLoginScreenView()
    
    override func loadView() {
        view = inicialScreenCustom
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inicialScreenCustom.teacherButton.addTarget(self, action: #selector(navigateToTeacherLoginScreen), for: .touchUpInside)
        inicialScreenCustom.studentButton.addTarget(self, action: #selector(navigateToStudentLoginScreen), for: .touchUpInside)
    }
    
    @objc func navigateToTeacherLoginScreen() {
        
        let teacherLoginViewControllerCustom = TeacherLoginViewController()
        self.navigationController?.pushViewController(teacherLoginViewControllerCustom, animated: true)
        
    }
    
    @objc func navigateToStudentLoginScreen() {
        
        let studentLoginViewControllerCustom = StudentLoginController()
        self.navigationController?.pushViewController(studentLoginViewControllerCustom, animated: true)
        
    }

}
