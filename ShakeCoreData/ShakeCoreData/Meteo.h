//
//  Meteo.h
//  ShakeCoreData
//
//  Created by dib258 on 11/06/14.
//  Copyright (c) 2014 258labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Vetement;

@interface Meteo : NSManagedObject

@property (nonatomic, retain) NSString * nom;
@property (nonatomic, retain) NSSet *vetements;
@end

@interface Meteo (CoreDataGeneratedAccessors)

- (void)addVetementsObject:(Vetement *)value;
- (void)removeVetementsObject:(Vetement *)value;
- (void)addVetements:(NSSet *)values;
- (void)removeVetements:(NSSet *)values;

@end
