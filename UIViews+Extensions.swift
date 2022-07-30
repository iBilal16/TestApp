//
//  Extensions+UIViews.swift
//  TestApp
//
//  Created by Bilal Ahmad on 22/03/2022.
//

import Foundation
import UIKit

extension UIView{
    
    func makeCornerRadius (radius: CGFloat) {
        self.layer.cornerRadius = radius
    }
    
    func createBorder (width: CGFloat, color: UIColor) {
        self.layer.borderWidth = width
        self.layer.borderColor = color.cgColor
    }
    
    func makeShadow(height:Int,width:Int,radius:CGFloat,opacity:Float){
               self.layer.shadowColor = UIColor.black.cgColor
               self.layer.shadowOffset = CGSize(width: width, height: height)
               self.layer.shadowRadius = radius
               self.layer.shadowOpacity = opacity
               self.layer.masksToBounds = false
           }
    
    func txtFieldCornorRound(textfiled:UITextField){
            textfiled.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textfiled.frame.height))
            textfiled.leftViewMode = .always
            textfiled.layer.borderWidth = 0.02
        }
    
    func makeShadow(){
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: -5, height: 5)
        self.layer.shadowRadius = 10
        self.layer.shadowOpacity = 0.16
        self.layer.masksToBounds = false
      }
    
}


 
func convertDate(_ date: String) -> String
    {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"
        let date = dateFormatter.date(from: date)
        dateFormatter.dateFormat = "dd-MM-yyyy"
        return  dateFormatter.string(from: date!)

    }

func convertDateFormaterWithTime(_ date: String) -> String
    {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        let date = dateFormatter.date(from: date)
        dateFormatter.dateFormat = "dd-MM-yyyy - hh:mm aa"
        return  dateFormatter.string(from: date!)

    }


