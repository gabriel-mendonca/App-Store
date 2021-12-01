//
//  BuscaService.swift
//  App Store
//
//  Created by Gabriel Mendonça Sousa Gonçalves on 30/11/21.
//

import UIKit

class BuscaService {
    
    static let shared = BuscaService()
    
    func buscaApps(texto: String) {
        print("buscaService \(texto)")
    }
}
