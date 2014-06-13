//
//  ViewController.m
//  ShakeCoreData
//
//  Created by dib258 on 12/06/14.
//  Copyright (c) 2014 258labs. All rights reserved.
//

#import "ViewController.h"
#import "BTCoreDataHelper.h"
#import "CategorieVetement.h"
#import "MyCollectionViewCell.h"

@interface ViewController ()

@end

@implementation ViewController {
    NSMutableArray *_titreCategorie;
    NSMutableArray *_imageCategorie;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _titreCategorie = [NSMutableArray arrayWithObjects:
        @"T-shirt",
        @"Pantalon",
        @"Chaussure",
                       @"Pull",
                       @"T-shirt",
                       @"Pantalon",
                       @"Chaussure",
                       @"Pull",
                       @"T-shirt",
                       @"Pantalon",
                       @"Chaussure",
                       @"Pull", nil
    ];
    
    _imageCategorie = [NSMutableArray arrayWithObjects:
        @"tshirt.png",
        @"pantalon.png",
        @"chaussure.png",
                       @"pull.png",
                       @"tshirt.png",
                       @"pantalon.png",
                       @"chaussure.png",
                       @"pull.png",
                       @"tshirt.png",
                       @"pantalon.png",
                       @"chaussure.png",
                       @"pull.png",nil
    ];
    /*
    _allCategorieItems = [[BTCoreDataHelper fetchAllResultsForEntityName:@"CategorieVetement" sortedBy:@"nom" withPredicate:nil] mutableCopy];
    NSLog(@"%i", _allCategorieItems.count);
    
    
    if (!_allCategorieItems.count) {
        NSManagedObjectContext *context = [BTCoreDataHelper context];
        CategorieVetement *vet;
        for (int i = 0; i < 4; i++){
            vet = [NSEntityDescription insertNewObjectForEntityForName:@"CategorieVetement" inManagedObjectContext:context];
            vet.nom = _titreCategorie[i];
            vet.logo = _imageCategorie[i];
        }
        NSError *error;
        [context save:&error];
    }
    
    for (int i = 0; i < _allCategorieItems.count; ++i) {
        CategorieVetement *tmp = [_allCategorieItems objectAtIndex:i];
        
        NSLog(@"Nom %@, Logo %@", tmp.nom, tmp.logo);
    }
    */
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

# pragma mark - UICollectionView

- (NSInteger) numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return _titreCategorie.count;
}

- (UICollectionViewCell *) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    MyCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"MyCell" forIndexPath:indexPath];
    
    cell.categorieName.text = _titreCategorie[indexPath.row];
    
    cell.categorieThumb.image = [UIImage imageNamed: _imageCategorie[indexPath.row]];
    
    return cell;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
