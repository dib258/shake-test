//
//  Vetement.h
//  ShakeCoreData
//
//  Created by dib258 on 11/06/14.
//  Copyright (c) 2014 258labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "Meteo.h"

@class CategorieVetement, TypeVetement;

@interface Vetement : NSManagedObject

@property (nonatomic) Boolean isSale;
@property (nonatomic, retain) UIImage *image;
@property (nonatomic, retain) CategorieVetement *categorie;
@property (nonatomic, retain) TypeVetement *type;
@property (nonatomic, retain) Meteo *meteo;
@property (nonatomic, retain) NSSet *couleurs;
@end

@interface Vetement (CoreDataGeneratedAccessors)

//- (void) setImageFromImage:(UIImage *)image;

- (void)addCouleursObject:(NSManagedObject *)value;
- (void)removeCouleursObject:(NSManagedObject *)value;
- (void)addCouleurs:(NSSet *)values;
- (void)removeCouleurs:(NSSet *)values;

@end
