//
//  DetailViewController.swift
//  CollectionView
//
//  Translated by OOPer in cooperation with shlab.jp, on 2015/7/11.
//
//
/*
Copyright (C) 2015 Apple Inc. All Rights Reserved.
See LICENSE.txt for this sample’s licensing information

Abstract:
The secondary detailed view controller for this app.
*/
//
//@import UIKit;
import UIKit
//
//@interface DetailViewController : UIViewController
@objc(DetailViewController)
class DetailViewController: UIViewController {
//
//@property (nonatomic, strong) UIImage *image;
    var image: UIImage?
//
//@end
//
//#import "DetailViewController.h"
//
//
//@interface DetailViewController ()
//
//@property (nonatomic, weak) IBOutlet UIImageView *imageView;
    @IBOutlet private var imageView: UIImageView!
//
//@end
//
//
//@implementation DetailViewController
//
//- (void)viewWillAppear:(BOOL)animated
//{
    override func viewWillAppear(animated: Bool) {
//    [super viewWillAppear:animated];
        super.viewWillAppear(animated)
//    self.imageView.image = self.image;
        self.imageView.image = self.image
//}
    }
//
//@end
}