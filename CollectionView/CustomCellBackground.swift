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
//
//@import UIKit;
import UIKit
//
//@interface CustomCellBackground : UIView
@objc(CustomCellBackground)
class CustomCellBackground: UIView {
//
//@end
//
//#import "CustomCellBackground.h"
//
//@implementation CustomCellBackground
//
//- (void)drawRect:(CGRect)rect
//{
    override func drawRect(rect: CGRect) {
//    // draw a rounded rect bezier path filled with blue
//    CGContextRef aRef = UIGraphicsGetCurrentContext();
        let aRef = UIGraphicsGetCurrentContext()
//    CGContextSaveGState(aRef);
        CGContextSaveGState(aRef)
        defer {CGContextRestoreGState(aRef)}
//    UIBezierPath *bezierPath = [UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:5.0f];
        let bezierPath = UIBezierPath(roundedRect: rect, cornerRadius: 5.0)
//    bezierPath.lineWidth = 5.0f;
        bezierPath.lineWidth = 5.0
//    [[UIColor blackColor] setStroke];
        UIColor.blackColor().setStroke()
//
//    UIColor *fillColor = [UIColor colorWithRed:0.529 green:0.808 blue:0.922 alpha:1]; // color equivalent is #87ceeb
        let fillColor = UIColor(red: 0.529, green: 0.808, blue: 0.922, alpha: 1) // color equivalent is #87ceeb
//    [fillColor setFill];
        fillColor.setFill()
//
//    [bezierPath stroke];
        bezierPath.stroke()
//    [bezierPath fill];
        bezierPath.fill()
//    CGContextRestoreGState(aRef);
//}
    }
//
//@end
}