//
//  ReportVC.swift
//  Mind
//
//  Created by Adel on 8/8/18.
//  Copyright © 2018 Mind. All rights reserved.
//

import UIKit

class ReportVC: UIViewController ,RequestViewModelDelegate,UIPickerViewDelegate,UIPickerViewDataSource{
    
    
    @IBOutlet weak var pickerEmp: UIPickerView!
    @IBOutlet weak var pickerType: UIPickerView!
    @IBOutlet weak var pickerAccount: UIPickerView!
    @IBOutlet weak var dateFrom: UIDatePicker!
    @IBOutlet weak var dateTo: UIDatePicker!
    @IBOutlet weak var tableResults: UITableView!
    @IBOutlet weak var pickerPeroids: UIPickerView!
    
    
    // Define my variables
    var  arrOfBanks:[String] = []
    var  arrOfEmps:[String] = []
    var  arrOfAccounts:[String] = []
    var  arrOfPeriods:[String] = ["اخر يوم","اخر اسبوع","اخر شهر","اخر سنة"]
    var  arrOfTypes:[String] = ["المبيعات","المشتريات","مرتجع البيع","مرتجع الشراء","صافي المبيعات","صافي المشتريات","الهالك","تحويل لمخزن"]
    var viewModel = RequestViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.delegate = self
       // HelpingMethods.changeDateFormate(datePicker: dateFrom)
        
        ////////
        AccountRequestViewModel.getAccounts{ (success, error, accounts) in
            
            if success
            {
                self.arrOfAccounts = accounts
                self.pickerAccount.reloadAllComponents()
                print("accounts : \(accounts)")
            }
            else
            {
                print("error :\(error)")
            }
        }
        ///
        EmpRequestViewModel.getEmps { (success, error, employees) in
            
            if success
            {
                self.arrOfEmps = employees
                self.pickerEmp.reloadAllComponents()
                print("Emps : \(employees)")
            }
            else
            {
                print("error :\(error)")
            }
        }
        
     // End of main
    }
    
    @IBAction func btnSearchPressed(_ sender: UIButton) {
    }
    
    // End of the class
}

// the extenion
extension ReportVC{

    func didSuccefull(banks: [String]) {
      
        print("success \(arrOfBanks.count)")
    }
    
    func didFailure(error: NetworkError, errorMessage: String) {
        print("error hapend  \(errorMessage)")
    }
    
    // End of extenion
}

extension ReportVC{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == pickerEmp {
        return arrOfEmps.count
        }
        else if pickerView == pickerAccount
        {
            return arrOfAccounts.count
        }
        else if pickerView == pickerType
        {
            return arrOfTypes.count
        }
        else if pickerView == pickerPeroids
        {
            return arrOfPeriods.count
        }
        else
        {
            return 1
        }
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == pickerEmp {
        return arrOfEmps[row]
        }
        else if pickerView == pickerAccount{
            return arrOfAccounts[row]
        }
        else if pickerView == pickerType
        {
            return arrOfTypes[row]
        }
        else if pickerView == pickerPeroids
        {
            return arrOfPeriods[row]
        }
        else{
            return "test"
        }
    }
    
}
