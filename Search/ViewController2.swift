//
//  ViewController2.swift
//  Search
//
//  Created by Andrey Volobuev on 3/15/18.
//  Copyright © 2018 blob8129. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    var count = 2
    let lorem = """
        Lorem Ipsum is simply dummy text of the printing and typesetting industry.
        Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown
    """
    let short = "Short text"
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
    //    navigationController?.navigationBar.prefersLargeTitles = true
        
        tableView.dataSource = self
        
        tableView.estimatedRowHeight = 10
        tableView.rowHeight = UITableViewAutomaticDimension
        
        navigationItem.largeTitleDisplayMode = .never
        
        DispatchQueue
            .main
            .asyncAfter(deadline: .now() + 0.3 ) {
                let indexPaths = (2..<20).map { IndexPath(row: $0, section: 0) }
                self.count = 20
                
                self.tableView.insertRows(at: indexPaths, with: .middle)
              //  self.tableView.scrollToRow(at: indexPaths.last!, at: .top, animated: true)
                
               // self.tableView.reloadData()
        }
  
       // self.count = 20
      //  self.tableView.reloadData()
    }
}


extension ViewController2: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? TableViewCell
        
        cell?.testImageView.image = indexPath.row % 2 == 0 ? UIImage(named: "Image1") : UIImage(named: "Image2")

        cell?.testLabel.text = indexPath.row % 3 == 0 ? lorem : short
        
        return cell!
    }
}
