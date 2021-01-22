//
//  ShowError.swift
//  PocketBudgetApp
//
//  Created by Igor Parnadjiev on 8.12.20.
//

import UIKit

extension ViewController {

    func showErrorWith(title: String?, msg: String?) {
        let alert = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        
        let confirm = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alert.addAction(confirm)
        present(alert, animated: true, completion: nil)
    }

}
