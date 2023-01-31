//
//  AverageGradeDetailsViewController.swift
//  GradeApp
//
//  Created by Lucas Parolin on 25/01/23.
//

import UIKit

class AverageDetailsViewController: UIViewController {
    
    // Alias -> Apelido
    typealias CustomView = AverageDetailsScreenView
    
    // Variables
    var average: Float?
    var customView = CustomView()
    var avarageGradeDetails: [AverageDetails] = []
    
    // Action Variables
    var getAvarageGradeDetails: (AverageDetails) -> Void = {_ in}
    var close: () -> Void = {}
    
    // Constant
    let averageDetailsTableViewCell = AverageDetailsTableViewCell()
    
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
        AverageDetailsRepositoryMock.shared.getAvarageGradeDetails { details in
            self.avarageGradeDetails = details
        }
    }
    
    // Substituir por init
    func getData(name: String, subject: String, average: Float) {
        averageDetailsTableViewCell.avarageGradeDetails = AverageDetails(student: name, subject: subject, averageGrade: "Média do aluno: \(average)")
    }
}


extension AverageDetailsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return avarageGradeDetails.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: customView.cellId, for: indexPath) as! AverageDetailsTableViewCell
        
        cell.avarageGradeDetails = avarageGradeDetails[indexPath.item]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let studentFinalDetailsController = StudentFinalDetailsController()
        let average = avarageGradeDetails[indexPath.item]
        
        
        studentFinalDetailsController.getData(data: average)
        
        present(studentFinalDetailsController, animated: true)
        getAvarageGradeDetails(avarageGradeDetails[indexPath.item])
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if (editingStyle == .delete){
            avarageGradeDetails.remove(at: indexPath.item)
            tableView.deleteRows(at: [indexPath], with: .automatic)
            AverageDetailsRepositoryMock.shared.averages.remove(at: indexPath.item)
        }
    }
    
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let action = UIContextualAction(style: .normal, title: "Edit") { _, _, _ in  //
            // AQUI EDITA A CÉLULA
            let editViewController = EditViewController()
            
            editViewController.details = self.avarageGradeDetails[indexPath.item]
            
            editViewController.update = { detail in
                self.avarageGradeDetails[indexPath.item] = detail
                AverageDetailsRepositoryMock.shared.averages[indexPath.item] = detail
                
                tableView.reloadData()
                
                editViewController.dismiss(animated: true)
            }
            
            self.present(editViewController, animated: true)
        }
        action.backgroundColor = .systemBlue
        return UISwipeActionsConfiguration(actions: [action])   // p editar a celula
    }
}
