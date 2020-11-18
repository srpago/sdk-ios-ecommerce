//
//  ViewController.swift
//  SrPago-Ecommerce
//
//  Created by fbustosr@srpago.com on 11/11/2020.
//  Copyright (c) 2020 fbustosr@srpago.com. All rights reserved.
//

import UIKit
import SrPago
//import SrPago

class ViewController: UIViewController {

    @IBOutlet weak var cardNameTxtField: UITextField!
    @IBOutlet weak var cardNumberTxtField: UITextField!
    @IBOutlet weak var expirationMonthTxtField: UITextField!
    @IBOutlet weak var expirationYearTxtField: UITextField!
    @IBOutlet weak var cardCVVTxtField: UITextField!
    
    @IBOutlet weak var validateButton: UIButton!
    
    @IBOutlet weak var tokenLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var isValidCardNumberLabel: UILabel!
    @IBOutlet weak var isValidCardholdNameLabel: UILabel!
    @IBOutlet weak var isValidLuhnLabel: UILabel!
    @IBOutlet weak var isValidCVVLabel: UILabel!
    @IBOutlet weak var isValidExpirationDateLabel: UILabel!
    @IBOutlet weak var posibleCardLabel: UILabel!
    @IBOutlet weak var cardImage: UIImageView!
    
    var srPago: SrPago!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSrPago()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupSrPago(){
        srPago = SrPago.sharedInstance() as? SrPago
        srPago.publishableKey = "pk_pPieieldkierllllE"
        srPago.liveMode = false
    }
    
    @IBAction func validateAction(_ sender: Any) {
        let card = SPCard()
        
        card.name = "Armando Alvarado"
        card.number = "4242424242424242"
        card.expMonth = "01"
        card.expYear = "20"
        card.cvv = "333"
 
        
        srPago.token.createToken(with: card, onSuccess: { (token) in
            if let token = token?.token {
                print("\(token)")
            }
            
        }) { (error) in
            if let error = error?.message {
                print("\(error)")
            }
        }
    }
    
}

