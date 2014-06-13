//
// Created by Gilles Major on 22/05/14.
// Copyright (c) 2014 Gilles Major. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface BTCoreDataHelper : NSObject
+ (NSManagedObjectContext *) context;

// Given a string (name) and sort descriptor, fetch the data for the corresponding entity
// and return an array of those entities

+ (NSArray *)fetchAllResultsForEntityName:(NSString *)name sortedBy:(NSString *)sortDescriptorString withPredicate:(NSPredicate *)pred;

+ (NSArray *)fetchUniqueEntity:(NSString *)entity withLoginName:(NSString*)login;
@end