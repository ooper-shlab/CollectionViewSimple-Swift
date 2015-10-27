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

import UIKit

let kDetailedViewControllerID = "DetailView";    // view controller storyboard id
let kCellID = "cellID";                          // UICollectionViewCell storyboard id

@objc(ViewController)
class ViewController: UICollectionViewController {
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 32
    }
    
    override func collectionView(cv: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        // we're going to use a custom UICollectionViewCell, which will hold an image and its label
        //
        let cell = cv.dequeueReusableCellWithReuseIdentifier(kCellID, forIndexPath: indexPath) as! Cell
        
        // make the cell's title the actual NSIndexPath value
        cell.label.text = "{\(indexPath.row),\(indexPath.section)}"
        
        // load the image for this cell
        let imageToLoad = String(indexPath.row)
        cell.image.image = UIImage(named: imageToLoad)
        
        return cell
    }
    
    // the user tapped a collection item, load and set the image on the detail view controller
    //
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showDetail" {
            let selectedIndexPath = self.collectionView!.indexPathsForSelectedItems()![0]
            
            // load the image, to prevent it from being cached we use 'initWithContentsOfFile'
            let imageNameToLoad = "\(selectedIndexPath.row)_full"
            let image = UIImage(named: imageNameToLoad)
            let detailViewController = segue.destinationViewController as! DetailViewController
            detailViewController.image = image
        }
    }
    
}