//
//  ViewController.swift
//  PokeDex4
//
//  Created by Jackie Norstrom on 2/12/19.
//  Copyright © 2019 LAS. All rights reserved.
//

import UIKit

class ViewController:  UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
 
    @IBOutlet weak var collection: UICollectionView!    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        collection.dataSource = self
        collection.delegate = self
        parsePokemonCSV()
    }
    
    
    var pokemon = [Pokemon]()
    
    
    
    func parsePokemonCSV() {
        let path = Bundle.main.path(forResource: "pokemon", ofType: "csv")!
        do {
            let csv = try CSV(contentsOfURL: path)
            let rows = csv.rows
//            print(rows)
            for row in rows {
                let pokeId = Int(row["id"]!)!
                let name = row["identifier"]!
                
                let poke = Pokemon(name: name, pokedexId: pokeId)
                pokemon.append(poke)
            }
            
            
            
        } catch let err as NSError {
            print(err.debugDescription)
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pokemon.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "pokeCell", for: indexPath) as? PokeCollectionViewCell {
            
//            let pokemon = Pokemon(name: "Pokemon", pokedexId: indexPath.row)
            let poke = pokemon[indexPath.row]
            cell.configureCell(pokemon: poke)
            return cell

        } else {
            return UICollectionViewCell()
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 105, height: 105)
        
        
    }
    
    
    
    
    
}

