//
//  CustomCellBackground.swift
//  CollectionView
//
//  Translated by OOPer in cooperation with shlab.jp, on 2015/7/11.
//
//
/*
Copyright (C) 2015 Apple Inc. All Rights Reserved.
See LICENSE.txt for this sample’s licensing information

Abstract:
Custom UIView to draw a rounded blue box to represent a selected cell.
*/

import UIKit

@objc(CustomCellBackground)
class CustomCellBackground: UIView {
    
    override func draw(_ rect: CGRect) {
        // draw a rounded rect bezier path filled with blue
        let aRef = UIGraphicsGetCurrentContext()
        aRef?.saveGState()
        defer {aRef?.restoreGState()}
        let bezierPath = UIBezierPath(roundedRect: rect, cornerRadius: 5.0)
        bezierPath.lineWidth = 5.0
        UIColor.black.setStroke()
        
        let fillColor = UIColor(red: 0.529, green: 0.808, blue: 0.922, alpha: 1) // color equivalent is #87ceeb
        fillColor.setFill()
        
        bezierPath.stroke()
        bezierPath.fill()
    }
    
}
