//
//  Cell.swift
//  CollectionView
//
//  Translated by OOPer in cooperation with shlab.jp, on 2015/7/11.
//
//
/*
Copyright (C) 2015 Apple Inc. All Rights Reserved.
See LICENSE.txt for this sample’s licensing information

Abstract:
Custom collection view cell for image and its label.
*/

import UIKit

@objc(Cell)
class Cell: UICollectionViewCell {
    
    @IBOutlet var image: UIImageView!
    @IBOutlet var label: UILabel!
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        // change to our custom selected background view
        let backgroundView = CustomCellBackground(frame: CGRect.zero)
        self.selectedBackgroundView = backgroundView
    }
    
}
