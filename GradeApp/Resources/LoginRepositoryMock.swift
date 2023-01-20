//
//  LoginRepositoryMock.swift
//  GradeApp
//
//  Created by Lucas Parolin on 18/01/23.
//

import Foundation

class LoginRepositoryMock {
    static let shared = LoginRepositoryMock()
    func getLogin(completion: @escaping (Login) -> ())  {
        completion(
            Login(user:"Parolin", password:"123")
        )
    }
}
