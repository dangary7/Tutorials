//
//  ViewController.swift
//  Checklist
//
//  Created by Apple User on 4/7/19.
//  Copyright © 2019 Apple User. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //This method shows how many cells are going to be showed in the table view.
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //This method says whic cell will be used
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath) //Here we are specifying that the cell will be reused and the one will be the one specified with the identifier
        return cell //We return the cell so it can be displayed
    }


}

