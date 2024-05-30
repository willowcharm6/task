//
//  TaskViewController.swift
//  Tasks
//
//  Created by Charmaine_Guo on 10/2/23.
//

import UIKit

class TaskViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    
    var task: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = task
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Delete", style: .done, target: self, action: #selector(deleteTask()))
        
    }
    
    @objc func deleteTask() {
        let newCount = count - 1
        UserDefaults.standard.setValue(newCount, forKey: "count")
        UserDefaults.standard.setValue(nil, forKey: "task_\(currentPosition)")
        
    }
    


}
