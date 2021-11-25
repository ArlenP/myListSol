//
//  ViewController.swift
//  MyList
//
//  Created by Arlen Peña on 25/11/21.
//

import UIKit

class ViewController: UIViewController {

    var todo: [String] = []
    @IBAction func btnAgregar(_ sender: Any) {
        let alert = UIAlertController(title: "Nueva Tarea",
                                        message: "Agregar un nuevo titulo",
                                        preferredStyle: .alert)
          let saveAction = UIAlertAction(title: "Guardar",
                                         style: .default) {
            [unowned self] action in
            guard let textField = alert.textFields?.first,
            let nameToSave = textField.text else {
                    return
              }
              self.todo.append(nameToSave)
              self.myList.reloadData()
          }
          let cancelAction = UIAlertAction(title: "Cancel",
                                           style: .cancel)
          alert.addTextField()
          alert.addAction(saveAction)
          alert.addAction(cancelAction)
          present(alert, animated: true)
    }
    
    
    
    @IBOutlet weak var myList: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Mi lista"
        myList.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }


}

extension ViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for:indexPath)
        cell.textLabel?.text = todo[indexPath.row]
        return cell
    }
    
    
}
