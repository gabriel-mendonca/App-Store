//
//  BuscaVC.swift
//  App Store
//
//  Created by Gabriel Mendonça Sousa Gonçalves on 30/11/21.
//

import UIKit

class BuscaViewController: UITableViewController, UISearchBarDelegate {
    
    let cellId = "cellId"
    let searchController = UISearchController(searchResultsController: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(BuscaCell.self, forCellReuseIdentifier: cellId)
        self.configureSearchBar()
    }
    
    
    func configureSearchBar() {
        navigationItem.searchController = self.searchController
        
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "App Store"
        searchController.searchBar.delegate = self
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        buscaApps(texto: searchText)
    }
}

extension BuscaViewController {
    func buscaApps(texto: String) {
        BuscaService.shared.buscaApps(texto: texto)
    }
}

extension BuscaViewController {
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return tableView.bounds.width * 0.8
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! BuscaCell
        return cell
    }
}
