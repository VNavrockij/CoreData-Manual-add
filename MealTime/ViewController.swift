//
//  ViewController.swift
//  MealTime
//
//  Created by Vitalij Navrockij on 28/10/22.
//


import UIKit
import CoreData

class ViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    var context: NSManagedObjectContext!
    
    var array = [Date]()
    
    lazy var dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }()
    
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        let date = Date()
        array.append(date)
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        print("Hello, CoreData!")
    }
}

// MARK: - UITableViewDataSource

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "My happy meal time"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        let date = array[indexPath.row]
        
        cell!.textLabel!.text = dateFormatter.string(from: date)
        return cell!
    }
}

