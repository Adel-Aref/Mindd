//
//  HelpingCalsses.swift
//  Mind
//
//  Created by Adel on 8/14/18.
//  Copyright © 2018 Mind. All rights reserved.
//

import Foundation

import  UIKit
class HelpingMethods
{
    static func showActivityIndicator(myView:UIView)-> UIActivityIndicatorView
    {
        let activityIndicator = UIActivityIndicatorView(activityIndicatorStyle: .whiteLarge)
        activityIndicator.center = myView.center
        activityIndicator.color = #colorLiteral(red: 0, green: 0.7357301712, blue: 0.9509622455, alpha: 1)
        activityIndicator.startAnimating()
        activityIndicator.hidesWhenStopped = true
        myView.addSubview(activityIndicator)
        return activityIndicator
    }
    ///////
    static func removeActivityIndicator(activityIndicator:UIActivityIndicatorView)
    {
        
        activityIndicator.stopAnimating()
        activityIndicator.removeFromSuperview()
        
        
    }
    // this function to show alertview
    class func showAlertView()
    {
        
    }
    // this function to change datepicker formate
    class func changeDateFormate(datePicker:UIDatePicker)
    {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MM-yyyy"
        dateFormatter.string(from: datePicker.date)
        //self.view.endEditing(true)
    }
    
    
    
    // End of the class
}


