//
//  ViewController.swift
//  TablewithCollection
//
//  Created by marco rodriguez on 22/08/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "ExploreTableViewCell", for: indexPath) as! ExploreTableViewCell
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 128
    }

    @IBOutlet weak var tablaLugares: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tablaLugares.delegate = self
        tablaLugares.dataSource = self
        
    }

}

