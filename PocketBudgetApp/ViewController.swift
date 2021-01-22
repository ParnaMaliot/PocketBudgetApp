//
//  ViewController.swift
//  PocketBudgetApp
//
//  Created by Igor Parnadjiev on 7.12.20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enteredAmountLbl: UITextField!
    @IBOutlet weak var currentBalanceLbl: UILabel!
    @IBOutlet weak var totalTripBalanceLbl: UILabel!
    
    var balance: Balance?
    var finalBalance = "0"
    var replenishedAmount: String?
    var totalTripAmount = "0"
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        
    func replenish() {
        guard let enteredAmount = enteredAmountLbl.text, enteredAmount != "" else {
            return self.showErrorWith(title: "Error", msg: "Please enter the amount")
        }

        var currentBalance = currentBalanceLbl.text!
        currentBalanceLbl.text = "\(Double(enteredAmount)! + Double(currentBalance)!)"
        currentBalance = "\(Double(enteredAmount)! + Double(currentBalance)!)"
        finalBalance = currentBalance
        balance?.currentBalance = finalBalance
        
        displayTotalTripAmount()
        enteredAmountLbl.text = ""
    }
    
    func spend() {
        guard let enteredAmount = enteredAmountLbl.text, enteredAmount != "" else {
            return self.showErrorWith(title: "Error", msg: "Please enter the amount")
        }
        finalBalance = "\(Double(finalBalance)! - (Double(enteredAmount)!))"
        currentBalanceLbl.text = finalBalance
        enteredAmountLbl.text = ""
    }
    
    func displayTotalTripAmount() {
        guard let enteredAmount = enteredAmountLbl.text, enteredAmount != "" else {
            return self.showErrorWith(title: "Error", msg: "Please enter the amount")
        }
        guard let tripBalance = totalTripBalanceLbl.text else {return}
        totalTripAmount = "\(Double(enteredAmount)! + Double(tripBalance)!)"
            totalTripBalanceLbl.text = String(totalTripAmount)
            balance?.totalTripAmount = totalTripAmount
    }
    
    
    
    @IBAction func replenishButton(_ sender: UIButton) {
        replenish()
    }
    
    @IBAction func spendButton(_ sender: UIButton) {
        spend()
    }
    
    @IBAction func undoButton(_ sender: UIButton) {
        
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        
    }
    
    
}

