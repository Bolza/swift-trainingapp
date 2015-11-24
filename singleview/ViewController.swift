//
//  ViewController.swift
//  singleview
//
//  Created by Stefano Sergio on 24/11/2015.
//  Copyright © 2015 Stefano Sergio. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var theLabel: UILabel!
    @IBOutlet weak var theInput: UITextField!
    @IBOutlet weak var theImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        theInput.delegate = self
        theInput.addTarget(self, action: "textFieldDidChange:", forControlEvents: UIControlEvents.EditingChanged)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onLabelChange(sender: UIButton) {
        theLabel.text = "Default text";
    }
    @IBAction func onImageClick(sender: UITapGestureRecognizer) {
        theInput.resignFirstResponder()
        let imagePickerController = UIImagePickerController()
        imagePickerController.sourceType = .PhotoLibrary
        imagePickerController.delegate = self
        presentViewController(imagePickerController, animated: true, completion: nil)
        
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder();
        return true;
    }
    func textFieldDidEndEditing(textField: UITextField) {
        theLabel.text = textField.text
    }
    func textFieldDidChange(textField: UITextField) {
        theLabel.text = textField.text
    }
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        let selectedImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        theImage.image = selectedImage;
        dismissViewControllerAnimated(true, completion: nil)
    }
    
}

