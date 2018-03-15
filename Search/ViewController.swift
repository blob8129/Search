//
//  ViewController.swift
//  Search
//
//  Created by Andrey Volobuev on 3/15/18.
//  Copyright © 2018 blob8129. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let items = [
        "item1",
        "item1",
        "item1",
        "item1",
        "item1",
        "item1",
        "item1",
        "item1",
        "item1",
        "item1",
        "item1",
        "item1",
        "item1",
        "item1",
        "item1",
        "item1",
        "item1",
        "item1",
        "item1",
        "item1",
        "item1"
    ]
    @IBOutlet weak var tableView: UITableView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
        title = "Search"
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .automatic
        
        let searchController = UISearchController(searchResultsController: nil)
        searchController.dimsBackgroundDuringPresentation = false 
        navigationItem.searchController = searchController
        definesPresentationContext = true
    }

}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
}

