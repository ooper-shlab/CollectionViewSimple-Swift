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
//
//@import UIKit;
import UIKit
//
//@interface Cell : UICollectionViewCell
@objc(Cell)
class Cell: UICollectionViewCell {
//
//@property (strong, nonatomic) IBOutlet UIImageView *image;
    @IBOutlet var image: UIImageView!
//@property (strong, nonatomic) IBOutlet UILabel *label;
    @IBOutlet var label: UILabel!
//
//@end
//
//#import "Cell.h"
//#import "CustomCellBackground.h"
//
//@implementation Cell
//
//
//- (instancetype)initWithCoder:(NSCoder *)aDecoder
//{
    required init?(coder aDecoder: NSCoder) {
//    self = [super initWithCoder:aDecoder];
        super.init(coder: aDecoder)
//    if (self)
//    {
//        // change to our custom selected background view
//        CustomCellBackground *backgroundView = [[CustomCellBackground alloc] initWithFrame:CGRectZero];
        let backgroundView = CustomCellBackground(frame: CGRectZero)
//        self.selectedBackgroundView = backgroundView;
        self.selectedBackgroundView = backgroundView
//    }
//    return self;
//}
    }
//
//@end
}