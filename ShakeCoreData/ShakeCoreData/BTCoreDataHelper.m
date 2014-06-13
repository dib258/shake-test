//
// Created by Gilles Major on 22/05/14.
// Copyright (c) 2014 Gilles Major. All rights reserved.
//


#import "BTCoreDataHelper.h"
#import "AppDelegate.h"


@implementation BTCoreDataHelper
+ (NSManagedObjectContext *)context
{
      AppDelegate *delegate = [[UIApplication sharedApplication] delegate];
      NSManagedObjectContext *context = [delegate managedObjectContext];

      return context;
}

+ (NSArray *)fetchAllResultsForEntityName:(NSString *)name sortedBy:(NSString *)sortDescriptorString withPredicate:(NSPredicate *) pred
{
    
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:name];
    request.fetchBatchSize = 20;
    request.fetchLimit = 100;

    NSSortDescriptor *sortDescriptor = [NSSortDescriptor sortDescriptorWithKey:sortDescriptorString ascending:YES];

    // If a predicate has been put in the parameters, assign it to the request to avoid the default one
    if (pred) {
        request.predicate = pred;
    }

    request.sortDescriptors = @[sortDescriptor];
    return [[self context] executeFetchRequest:request error:nil];
}

+ (NSArray *)fetchUniqueEntity:(NSString *)entity withLoginName:(NSString*)login
{
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:entity];
    request.fetchBatchSize = 1;

    //Define predicate that will detect if user exists
    request.predicate = [NSPredicate predicateWithFormat:@"login = %@", login];


    NSError *error;
    return [[self context] executeFetchRequest:request error:&error];
}

@end