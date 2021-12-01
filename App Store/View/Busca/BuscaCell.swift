//
//  BuscaCell.swift
//  App Store
//
//  Created by Gabriel Mendonça Sousa Gonçalves on 30/11/21.
//

import UIKit

class BuscaCell: UITableViewCell {
    
    let iconeImageView: UIImageView = .iconeImageView()
    let tituloLabel: UILabel = .textLabel(text: "App nome", fontSize: 18, numberOfLines: 2)
    let empresaLabel: UILabel = .textLabel(text: "Empresa nome", fontSize: 14)
    let obterButton: UIButton = .obterButton()
    let screenShotImageView: UIImageView = .screenShotImageView()
    let screenShot2ImageView: UIImageView = .screenShotImageView()
    let screenShot3ImageView: UIImageView = .screenShotImageView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        let tituloEmpresaStackView = UIStackView(arrangedSubviews: [tituloLabel, empresaLabel])
        tituloEmpresaStackView.spacing = 8
        tituloEmpresaStackView.axis = .vertical
        
        let headerStackView = UIStackView(arrangedSubviews: [iconeImageView, tituloEmpresaStackView, obterButton])
        headerStackView.spacing = 12
        headerStackView.alignment = .center
        
        let screenShotStackView = UIStackView(arrangedSubviews: [screenShotImageView,screenShot2ImageView, screenShot3ImageView])
        screenShotStackView.spacing = 12
        screenShotStackView.distribution = .fillEqually
        
        let globalStackView = UIStackView(arrangedSubviews: [headerStackView, screenShotStackView])
        globalStackView.spacing = 16
        globalStackView.axis = .vertical
        
        addSubview(globalStackView)
        globalStackView.preencherSuperView(padding: .init(top: 20, left: 20, bottom: 20, right: 20))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
