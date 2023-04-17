//
//  ResultviewViewController.swift
//  Calcul_IMC
//
//  Created by em on 2023-04-19.
//

import UIKit

class ResultviewViewController: UIViewController {
	var conseilvalue: String?
	var imcval: String?
	var color: UIColor?
	
	@IBOutlet var imclabel: UILabel!
	
	@IBOutlet var conseil: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		imclabel.text = imcval
		
		// Do any additional setup after loading the view.
	}
	
	@IBAction func recalc(_ sender: UIButton) {
		self.dismiss(animated: true, completion: nil)
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