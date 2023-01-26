//
//  AverageGradeDetailsViewController.swift
//  GradeApp
//
//  Created by Lucas Parolin on 25/01/23.
//

import UIKit

class AverageGradeDetailsViewController: UIViewController {
    
    var getAvarageGradeDetails: (AvarageGradeDetails) -> Void = {_ in}
    var close: () -> Void = {}
    var average: Float?
    
    var avarageGradeDetails: [AvarageGradeDetails] = []
    typealias CustomView = AverageGradeDetailsScreenView
    var customView = CustomView()
    let averageGradeDetailsTableViewCellCustom = AverageGradeDetailsTableViewCell()
    
    override func loadView() {
        view = customView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customView.tableView.delegate = self
        customView.tableView.dataSource = self
        customView.calculateAgain.addTarget(self, action: #selector(dismissScreen), for: .touchUpInside)

        populateStudentList()
    }
    
    @objc func dismissScreen() {
        close()
    }
    
    func isUser(){
        customView.calculateAgain.isHidden = true
    }
    
    func populateStudentList() {
        AverageGradeDetailsRepositoryMock.shared.getAvarageGradeDetails { details in
            self.avarageGradeDetails = details
        }
    }
    
    func getData(name: String, subject: String, average: Float) {
        averageGradeDetailsTableViewCellCustom.avarageGradeDetails = AvarageGradeDetails(student: name, subject: subject, averageGrade: "Média do aluno: \(average)")
        
//        averageGradeDetailsTableViewCellCustom.lblName.text = name
//        averageGradeDetailsTableViewCellCustom.lblSubject.text = subject
//        averageGradeDetailsTableViewCellCustom.lblAverageGrade.text = "Média do aluno: \(average)"
    }
}
extension AverageGradeDetailsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return avarageGradeDetails.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: customView.cellId, for: indexPath) as! AverageGradeDetailsTableViewCell
        
        cell.avarageGradeDetails = avarageGradeDetails[indexPath.item]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let studentGradesFinalDetailsController = StudentGradesFinalDetailsController()
        let average = avarageGradeDetails[indexPath.item]
        
        
        studentGradesFinalDetailsController.getData(name: average.student ?? "", firstGrade: average.firstGrade ?? "", secondGrade: average.secondGrade ?? "", thirdGrade: average.thirdGrade ?? "", fourthGrade: average.fourthGrade ?? "", subject: average.subject ?? "", average: Float(average.averageGrade ?? "") ?? 1.0)
        
        present(studentGradesFinalDetailsController, animated: true)
        getAvarageGradeDetails(avarageGradeDetails[indexPath.item])
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if (editingStyle == .delete){
            avarageGradeDetails.remove(at: indexPath.item)
            tableView.deleteRows(at: [indexPath], with: .automatic)
            AverageGradeDetailsRepositoryMock.shared.averages.remove(at: indexPath.item)
        }
    }
}
