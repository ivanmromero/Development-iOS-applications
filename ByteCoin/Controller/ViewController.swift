//
//  ViewController.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var priceView: UILabel!
    @IBOutlet weak var moneyList: UIPickerView!
    @IBOutlet weak var moneyView: UILabel!
    
    
    var coinManager = CoinManager()

        override func viewDidLoad() {
            super.viewDidLoad()
            
            coinManager.delegate = self
            moneyList.dataSource = self
            moneyList.delegate = self
        }
    }

    //MARK: - CoinManagerDelegate
    extension ViewController: CoinManagerDelegate {
        
        func didUpdatePrice(price: String, currency: String) {
            
            DispatchQueue.main.async {
                self.priceView.text = price
                self.moneyView.text = currency
            }
        }
        
        func didFailWithError(error: Error) {
            print(error)
        }
    }

    //MARK: - UIPickerView DataSource & Delegate
    extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate {
        
        func numberOfComponents(in pickerView: UIPickerView) -> Int {
              return 1
          }
          
          func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
              return coinManager.currencyArray.count
          }
          
          func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
              return coinManager.currencyArray[row]
          }
          
          func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
              let selectedCurrency = coinManager.currencyArray[row]
              coinManager.getCoinPrice(for: selectedCurrency)
          }
    }


