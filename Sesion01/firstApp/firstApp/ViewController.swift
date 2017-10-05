//
//  ViewController.swift
//  firstApp
//
//  Created by Aula 1 on 25/9/17.
//  Copyright © 2017 Aitor García Luiz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    //MARK: properties
    
    @IBOutlet var vista: UIView!
    @IBOutlet weak var nombreLabel: UILabel!
    @IBOutlet weak var nombreTF: UITextField!
    @IBOutlet weak var apellidoTF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nombreTF.delegate = self;
        apellidoTF.delegate = self;
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
    //MARK: actions
    
    @IBAction func setResetButton(sender: AnyObject) {
        nombreLabel.text = "Hola desconocido";
        nombreTF.text = "";
        apellidoTF.text = "";
        //vista.backgroundColor = UIColor(red: 239, green: 241, blue: 241, alpha: 1);
    }
    
    func getRandomColor() -> UIColor{
        let randomRed:CGFloat = CGFloat(drand48())
        let randomGreen:CGFloat = CGFloat(drand48())
        let randomBlue:CGFloat = CGFloat(drand48())
        
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
    }
    
    
    @IBAction func setColorButtom(sender: AnyObject) {
        vista.backgroundColor = getRandomColor()
    }
    
    
    
    
    //MARK: UITextFieldDelegate
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        //Hide the keyboard
        textField.resignFirstResponder()
        return true;
    }

    
    func textFieldDidEndEditing(textField: UITextField) {
        //Para que no coja el campo vacio
        if (nombreTF.text == "" && apellidoTF.text! == ""){
            nombreLabel.text = "Hola desconocido";
        } else {
            nombreLabel.text = "Hola " + nombreTF.text! + " " + apellidoTF.text!
        }
    }
    
    
}

