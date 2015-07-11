//
//  ViewController.swift
//  CollectionView
//
//  Translated by OOPer in cooperation with shlab.jp, on 2015/7/11.
//
//
/*
Copyright (C) 2015 Apple Inc. All Rights Reserved.
See LICENSE.txt for this sample’s licensing information

Abstract:
The primary view controller for this app.
*/
//
//@import UIKit;
import UIKit
//
//@interface ViewController : UICollectionViewController
//@end
//
//#import "ViewController.h"
//#import "DetailViewController.h"
//#import "Cell.h"
//
//NSString *kDetailedViewControllerID = @"DetailView";    // view controller storyboard id
let kDetailedViewControllerID = "DetailView";    // view controller storyboard id
//NSString *kCellID = @"cellID";                          // UICollectionViewCell storyboard id
let kCellID = "cellID";                          // UICollectionViewCell storyboard id
//
//@implementation ViewController
@objc(ViewController)
class ViewController: UICollectionViewController {
//
//- (NSInteger)collectionView:(UICollectionView *)view numberOfItemsInSection:(NSInteger)section;
//{
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//    return 32;
        return 32
//}
    }
//
//- (UICollectionViewCell *)collectionView:(UICollectionView *)cv cellForItemAtIndexPath:(NSIndexPath *)indexPath;
//{
    override func collectionView(cv: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
//    // we're going to use a custom UICollectionViewCell, which will hold an image and its label
//    //
//    Cell *cell = [cv dequeueReusableCellWithReuseIdentifier:kCellID forIndexPath:indexPath];
        let cell = cv.dequeueReusableCellWithReuseIdentifier(kCellID, forIndexPath: indexPath) as! Cell
//
//    // make the cell's title the actual NSIndexPath value
//    cell.label.text = [NSString stringWithFormat:@"{%ld,%ld}", (long)indexPath.row, (long)indexPath.section];
        cell.label.text = "{\(indexPath.row),\(indexPath.section)}"
//
//    // load the image for this cell
//    NSString *imageToLoad = [NSString stringWithFormat:@"%ld", (long)indexPath.row];
        let imageToLoad = String(indexPath.row)
//    cell.image.image = [UIImage imageNamed:imageToLoad];
        cell.image.image = UIImage(named: imageToLoad)
//
//    return cell;
        return cell
//}
    }
//
//// the user tapped a collection item, load and set the image on the detail view controller
////
//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
//{
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//    if ([segue.identifier isEqualToString:@"showDetail"])
//    {
        if segue.identifier == "showDetail" {
//        NSIndexPath *selectedIndexPath = [self.collectionView indexPathsForSelectedItems][0];
            let selectedIndexPath = self.collectionView!.indexPathsForSelectedItems()![0]
//
//        // load the image, to prevent it from being cached we use 'initWithContentsOfFile'
//        NSString *imageNameToLoad = [NSString stringWithFormat:@"%ld_full", (long)selectedIndexPath.row];
            let imageNameToLoad = "\(selectedIndexPath.row)_full"
//        UIImage *image = [UIImage imageNamed:imageNameToLoad];
            let image = UIImage(named: imageNameToLoad)
//        DetailViewController *detailViewController = segue.destinationViewController;
            let detailViewController = segue.destinationViewController as! DetailViewController
//        detailViewController.image = image;
            detailViewController.image = image
//    }
        }
//}
    }
//
//@end
}