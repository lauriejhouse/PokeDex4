//
//  Pokemon.swift
//  PokeDex4
//
//  Created by Jackie Norstrom on 2/19/19.
//  Copyright © 2019 LAS. All rights reserved.
//

import Foundation


class Pokemon {
    
    private var _name: String!
    private var _pokedexId: Int!
    
    var name: String {
        return _name
    }
    
    var pokedexId: Int {
        return _pokedexId
    }
    
    init(name: String, pokedexId: Int) {
        self._name = name
        self._pokedexId = pokedexId
    }
    
}


