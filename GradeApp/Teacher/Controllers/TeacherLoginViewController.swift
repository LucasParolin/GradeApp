//
//  LoginViewController.swift
//  GradeApp
//
//  Created by Lucas Parolin on 13/01/23.
//

import UIKit

class TeacherLoginViewController: UITableViewController {
    
    let teacherLoginScreenCustom = TeacherLoginScreen()
    let teacherInicialScreenCustom = TeacherInicialScreen()
    override func loadView() {
        view = teacherLoginScreenCustom
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        teacherLoginScreenCustom.loginButton.addTarget(self, action: #selector(navigateToInicialScreen), for: .touchUpInside)
        
    }
    
    @objc func navigateToInicialScreen() {
        
        let teacherInicialScreenCustom = TeacherInicialScreenController()
        self.navigationController?.pushViewController(teacherInicialScreenCustom, animated: true)
        
    }
}
