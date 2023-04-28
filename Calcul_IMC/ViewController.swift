//
//  ViewController.swift
//  Calcul_IMC
//
//  Created by Janvier Rugomoka Zagabe on 2022-04-16.
//

import UIKit

class ViewController: UIViewController {
	
	
	//var file = file()
	
	var imcval = "0.0"
	@IBOutlet var lbltaille: UILabel!

	@IBOutlet var tailleslider: UISlider!
	@IBOutlet var lblpoids: UILabel!

	@IBOutlet var poidsslider: UISlider!
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

	@IBAction func Calculer(_ sender: UIButton) {
		let mataille = tailleslider.value
		let monpoids = poidsslider.value

		let bmi = monpoids / (mataille * mataille)
		imcval = String(format: " %.f", bmi)
		performSegue(withIdentifier: "goToResult", sender: self)
	}

	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		// Get the new view controller using segue.destination.
		// Pass the selected object to the new view controller.
		if segue.identifier == "goToResult" {
			let destinationVC = segue.destination as! ResultviewViewController
			destinationVC.imcval = imcval
		}
	}
}
