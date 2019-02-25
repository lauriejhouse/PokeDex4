//
//  Pokemon.swift
//  PokeDex4
//
//  Created by Jackie on 2/14/19.
//  Copyright © 2019 LAS. All rights reserved.
//

import Foundation

//look up what a private var is and why it has an _.
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
