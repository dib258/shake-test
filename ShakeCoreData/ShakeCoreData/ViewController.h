//
//  ViewController.h
//  ShakeCoreData
//
//  Created by dib258 on 12/06/14.
//  Copyright (c) 2014 258labs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate>

@property (nonatomic, retain) NSMutableArray *allCategorieItems;
@property (nonatomic, retain) NSManagedObjectContext *context;
@property (nonatomic, retain) NSManagedObjectModel *model;


@end
