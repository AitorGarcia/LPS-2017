//
//  EvaluacionControl.swift
//  secondApp
//
//  Created by Aula11 on 9/10/17.
//  Copyright © 2017 Aitor García Luiz. All rights reserved.
//

import UIKit

class EvaluacionControl: UIView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    // MARK: atributos
    var gradoAfinidad = 0 {
        didSet{
            actualizaEstrellas()
        }
    }
    var botones = [UIButton]()
    
    
    //MARK: inicializacion
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
        
        for i in 0..<5{
            let boton = UIButton(frame: CGRect(x: 0, y: 0, width: self.frame.width / 5, height: self.frame.height))
            boton.setImage(UIImage(named:"Estrella vacia"), forState: .Normal)
            boton.setImage(UIImage(named:"Estrella rellena"), forState: .Selected)
            boton.adjustsImageWhenHighlighted = false
            
            boton.addTarget(self, action: #selector(btnEval(_:)), forControlEvents: .TouchDown)
            
            boton.tag = i+1; //Para que sea de 1 a 5
            
            botones += [boton]
            addSubview(boton)
        }
    }
    
    override func intrinsicContentSize() -> CGSize {
        return CGSize(width: 240, height: 44)
    }
    
    override func layoutSubviews() {
        for (i, boton) in botones.enumerate() {
            boton.frame.origin.x = CGFloat(i * (44 + 5))
        }
        actualizaEstrellas()
    }
    
    
    func btnEval(boton: UIButton) {
        //print("Botón \(boton.tag) pulsado...👍")
        gradoAfinidad = botones.indexOf(boton)! + 1
        //actualizaEstrellas()
    }
    
    
    func actualizaEstrellas(){
        for (i, botonI) in botones.enumerate(){
            botonI.selected = gradoAfinidad > i
        }
    }
    
    
    
    
    
    
}
