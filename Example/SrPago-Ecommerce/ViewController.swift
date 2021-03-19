//
//  ViewController.swift
//  SrPago-Ecommerce
//
//  Created by fbustosr@srpago.com on 11/11/2020.
//  Copyright (c) 2020 fbustosr@srpago.com. All rights reserved.
//

import UIKit
import SrPago

enum result: String {
    case success = "✔︎"
    case error = "✘"
}

class ViewController: UIViewController {

    @IBOutlet weak var cardNameTxtField: UITextField!
    @IBOutlet weak var cardNumberTxtField: UITextField!
    @IBOutlet weak var expirationMonthTxtField: UITextField!
    @IBOutlet weak var expirationYearTxtField: UITextField!
    @IBOutlet weak var cardCVVTxtField: UITextField!
    
    @IBOutlet weak var validateCardName: UILabel!
    @IBOutlet weak var validateCardNumber: UILabel!
    @IBOutlet weak var validateExpirationMonth: UILabel!
    @IBOutlet weak var validateExpirationYear: UILabel!
    @IBOutlet weak var validateCardCVV: UILabel!
    
    @IBOutlet weak var validateButton: UIButton!
    
    @IBOutlet weak var tokenLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var posibleCardLabel: UILabel!
    @IBOutlet weak var cardImage: UIImageView!
    
    var srPago: SrPago!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSrPago()
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tap)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    func setupSrPago(){
        srPago = SrPago.sharedInstance()
        srPago.publishableKey = "pk_pPieieldkierllllE"
        srPago.liveMode = false
    }
    
    @IBAction func validateAction(_ sender: Any) {
        let card = SPCard()
        card.name = cardNameTxtField.text
        card.number = cardNumberTxtField.text
        card.expMonth = expirationMonthTxtField.text
        card.expYear = expirationYearTxtField.text
        card.cvv = cardCVVTxtField.text
        
        srPago.token.createToken(with: card, onSuccess: { (token) in
            if let token = token?.token {
                self.tokenLabel.text = "Token: \(token)"
            }
        }) { (error) in
            if let error = error?.message {
                self.tokenLabel.text = "Error: \(error)"
            }
        }
        
        switch(card.validate()){
        case .INVALID_CVV:
            statusLabel.text = "Invalid CVV"
        case .INVALID_NUMBER:
            statusLabel.text = "Invalid Number"
        case .INVALID_EXPIRATION:
            statusLabel.text = "Invalid expiration date"
        case .INVALID_NAME:
            statusLabel.text = "Invalid cardholder name"
        case .VALID_CARD:
            statusLabel.text = "Tarjeta valida"
        }
        
        validateCardCVV.text = SPCard.isValidCVV(card.cvv) ? result.success.rawValue : result.error.rawValue
        validateCardNumber.text = SPCard.isValidCardNumber(card.number) ? result.success.rawValue : result.error.rawValue
        validateExpirationMonth.text = SPCard.isValidExpiration(withYear: card.expYear, month: card.expMonth) ? result.success.rawValue : result.error.rawValue
        validateExpirationYear.text = validateExpirationMonth.text
        validateCardName.text = SPCard.isValidCardHolderName(card.name) ? result.success.rawValue : result.error.rawValue
        
        validateCardCVV.textColor = SPCard.isValidCVV(card.cvv) ? #colorLiteral(red: 0.02313862741, green: 0.7562741637, blue: 0.4507983327, alpha: 1) : #colorLiteral(red: 0.851195395, green: 0, blue: 0, alpha: 1)
        validateCardNumber.textColor = SPCard.isValidCardNumber(card.number) ? #colorLiteral(red: 0.02313862741, green: 0.7562741637, blue: 0.4507983327, alpha: 1) : #colorLiteral(red: 0.851195395, green: 0, blue: 0, alpha: 1)
        validateExpirationMonth.textColor = SPCard.isValidExpiration(withYear: card.expYear, month: card.expMonth) ? #colorLiteral(red: 0.02313862741, green: 0.7562741637, blue: 0.4507983327, alpha: 1) : #colorLiteral(red: 0.851195395, green: 0, blue: 0, alpha: 1)
        validateExpirationYear.textColor = validateExpirationMonth.textColor
        validateCardName.textColor = SPCard.isValidCardHolderName(card.name) ? #colorLiteral(red: 0.02313862741, green: 0.7562741637, blue: 0.4507983327, alpha: 1) : #colorLiteral(red: 0.851195395, green: 0, blue: 0, alpha: 1)
        
        switch(SPCard.getPossibleCardType(card.number)){
        case .AMEX_CARD:
            posibleCardLabel.text = "Posible Card Type: AMEX"
        case .MAST_CARD:
            posibleCardLabel.text = "Posible Card Type: MASTERCARD"
        case .UNKNOWN_CARD:
            posibleCardLabel.text = "Posible Card Type: UNKNOW"
        case .VISA_CARD:
            posibleCardLabel.text = "Posible Card Type: VISA"
        }
    }
}

