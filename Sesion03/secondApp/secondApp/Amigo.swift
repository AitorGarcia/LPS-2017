//
//  Amigo.swift
//  secondApp
//
//  Created by Aula11 on 9/10/17.
//  Copyright © 2017 Aitor García Luiz. All rights reserved.
//

import UIKit //Eliminamos Foundation

class Amigo{
    
    //MARK: atributos
    var nombre: String
    var foto: UIImage?
    var gradoAfinidad: Int

    
    //MARK: Inicialización
    init?(nombre: String, foto: UIImage?, gAfinidad: Int){
        if nombre.isEmpty || gAfinidad < 0 {
            return nil
        }
        
        self.nombre = nombre
        self.foto = foto
        self.gradoAfinidad = gAfinidad
        
    }
    
}