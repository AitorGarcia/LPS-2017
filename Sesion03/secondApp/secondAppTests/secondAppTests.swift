//
//  secondAppTests.swift
//  secondAppTests
//
//  Created by Aula11 on 2/10/17.
//  Copyright © 2017 Aitor García Luiz. All rights reserved.
//

import XCTest
import UIKit
@testable import secondApp

class secondAppTests: XCTestCase {
    
    func testAmigo(){
        let posibleAmigo = Amigo(nombre: "Pepe", foto: nil, gAfinidad: 3)
        XCTAssertNotNil(posibleAmigo)
        
        let posibleAmigo2 = Amigo(nombre: "", foto: nil, gAfinidad: 3)
        XCTAssertNil(posibleAmigo2, "El nombre no puede estar vacío")
        
        let posibleAmigo3 = Amigo(nombre: "Pepe", foto: nil, gAfinidad: -2)
        XCTAssertNil(posibleAmigo3, "El gAfinidad no puede ser negativo...")
    }
    
}
