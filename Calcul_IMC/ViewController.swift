//
//  ViewController.swift
//  Calcul_IMC
//
//  Created by Janvier Rugomoka Zagabe on 2022-04-16.
//

import UIKit

class ViewController: UIViewController {
	@IBOutlet var lbltaille: UILabel!

	@IBOutlet var lblpoids: UILabel!

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}

	@IBAction func slidertaille(_ sender: UISlider) {
		let taille = String(format: "%.2f", sender.value)
		lbltaille.text = "\(taille) m"
	}
	
	
	@IBAction func sliderpoids(_ sender: UISlider) {
		let taille = String(format: "%.2f", sender.value)
		lblpoids.text = "\(taille) kg"
	}
	
	
}
