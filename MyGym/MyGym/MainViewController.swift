//
//  MainViewController.swift
//  MyGym
//
//  Created by Srikar Namburi on 9/5/22.
//

import UIKit

class MainViewController: UIViewController {


    @IBOutlet weak var imageView: UIImageView!
    var index = 0
    let immutableArray: [String] = ["dumbell1","dumbell2","dumbell3","dumbell4","dumbell5","dumbell6","dumbell7","dumbell8","dumbell9","dumbell10"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextButton(_ sender: Any) {
        var fireGif:UIImage;
        if(index < immutableArray.count){
            fireGif = UIImage.gifImageWithName(immutableArray[index])!;
            imageView.image = fireGif;
            index+=1
        }else{
            index = 0
            fireGif = UIImage.gifImageWithName(immutableArray[index])!;
            imageView.image = fireGif;
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
