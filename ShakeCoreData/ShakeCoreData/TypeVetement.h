//
//  TypeVetement.h
//  ShakeCoreData
//
//  Created by dib258 on 11/06/14.
//  Copyright (c) 2014 258labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface TypeVetement : NSManagedObject

@property (nonatomic, retain) NSString *nom;
@property (nonatomic, retain) NSSet *vetements;
@end

@interface TypeVetement (CoreDataGeneratedAccessors)

- (void)addVetementsObject:(NSManagedObject *)value;
- (void)removeVetementsObject:(NSManagedObject *)value;
- (void)addVetements:(NSSet *)values;
- (void)removeVetements:(NSSet *)values;

@end
