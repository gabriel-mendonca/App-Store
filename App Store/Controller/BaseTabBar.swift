//
//  BaseTabBar.swift
//  App Store
//
//  Created by Gabriel Mendonça Sousa Gonçalves on 19/11/21.
//

import UIKit

class BaseTabBarVC: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let hojeVC = criarViewControllers(viewController: UIViewController(), titulo: "Hoje", image: "icone-hoje")
        
        let appsVC = criarViewControllers(viewController: UIViewController(), titulo: "Apps", image: "icone-apps")
        
        let buscaVC = criarViewControllers(viewController: BuscaViewController(), titulo: "Busca", image: "icone-busca")
        
        viewControllers = [
            hojeVC,
            appsVC,
            buscaVC
        ]
        
        selectedIndex = 2
    }
    
    func criarViewControllers(viewController: UIViewController, titulo: String, image: String) -> UIViewController {
        let navigationController = UINavigationController(rootViewController: viewController)
        navigationController.navigationBar.prefersLargeTitles = true
        navigationController.navigationItem.title = titulo
        
        viewController.navigationItem.title = titulo
        viewController.tabBarItem.title = titulo
        viewController.tabBarItem.image = UIImage(named: image)
        viewController.view.backgroundColor = .white
        
        return navigationController
    }
    
}
