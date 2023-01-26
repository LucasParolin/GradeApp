//
//  StudentGradesFinalDetailsRepositoryMock.swift
//  GradeApp
//
//  Created by Lucas Parolin on 26/01/23.
//

import Foundation

class StudentGradesFinalDetailsRepositoryMock {
    
    static let shared = StudentGradesFinalDetailsRepositoryMock()
    
    var finalGradesDetails: [StudentGradesFinalDetails] = []
    
    func getFinalGradeDetails(completion: @escaping ([StudentGradesFinalDetails]) -> ()) {
        completion(finalGradesDetails)
    }
    
    func addFinalGradeDetails(finalGradeDetails: StudentGradesFinalDetails) {
        finalGradesDetails.append(finalGradeDetails)
    }
}
