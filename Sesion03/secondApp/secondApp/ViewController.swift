//
//  ViewController.swift
//  secondApp
//
//  Created by Aula11 on 2/10/17.
//  Copyright © 2017 Aitor García Luiz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    
    //MARK: properties
    
    @IBOutlet weak var nombreLB: UILabel!
    @IBOutlet weak var nombreTF: UITextField!
    @IBOutlet weak var imagenView: UIImageView!
    @IBOutlet weak var controlEvaluacion: EvaluacionControl!
    
    //MARK: actions
    @IBAction func resetBT(sender: AnyObject) {
        nombreLB.text = "Hola desconocido"
        nombreTF.text = ""
        imagenView.image = UIImage(named: "Imagen predeterminada")
        controlEvaluacion.gradoAfinidad = 0
    }
    
    
    @IBAction func seleccionarImagen(sender: UITapGestureRecognizer) {
        nombreTF.resignFirstResponder()
        let imagePickerCtrl = UIImagePickerController()
        imagePickerCtrl.sourceType = .PhotoLibrary
        imagePickerCtrl.delegate = self
        presentViewController(imagePickerCtrl, animated: true, completion: nil)
    }
    
    
    
    //MARK: UIImageViewControllerDelegate
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        let selectedImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        imagenView.image = selectedImage
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    // MARK: UITextFieldDelegate
    func textFieldShouldReturn (textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        nombreLB.text = "Hola " + textField.text!
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        nombreTF.delegate = self;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

