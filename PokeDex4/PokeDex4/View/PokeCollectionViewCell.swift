//
//  PokeCollectionViewCell.swift
//  PokeDex4
//
//  Created by Jackie on 2/25/19.
//  Copyright © 2019 LAS. All rights reserved.
//

import UIKit

class PokeCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var thumbImg: UIImageView!
    
    
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
        
        layer.cornerRadius = 5.0
    }
    
    var pokemon: Pokemon!
    
    func configureCell(pokemon: Pokemon) {
    
    self.pokemon = pokemon
    nameLabel.text = self.pokemon.name.capitalized
    thumbImg.image = UIImage(named: "\(self.pokemon.pokedexId)")

    }
    
}
