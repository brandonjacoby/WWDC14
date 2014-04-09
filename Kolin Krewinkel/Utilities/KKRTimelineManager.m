//
//  KKRTimelineFetcher.m
//  Kolin Krewinkel
//
//  Created by Kolin Krewinkel on 4/8/14.
//  Copyright (c) 2014 Kolin Krewinkel. All rights reserved.
//

#import "KKRTimelineManager.h"

#import "KKRManagedObjectContextStack.h"

@interface KKRTimelineManager ()

#pragma mark - Internal Networking



@end

@implementation KKRTimelineManager

#pragma mark - Singleton

+ (instancetype)sharedManager
{
    static id sharedFetcher;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedFetcher = [[[self class] alloc] init];
    });

    return sharedFetcher;
}

#pragma mark - Initialization

- (id)init
{
    if ((self = [super init]))
    {
        
    }

    return self;
}

#pragma mark - Fetching

- (void)getTimelineItemsWithCompletionHandler:(KKRTimelineManagerItemsCompletionManager)completionHandler
{
    [[KKRManagedObjectContextStack defaultStack] performBlock:^BOOL(NSManagedObjectContext *mutationContext, NSManagedObjectContext *interfaceContext, NSManagedObjectContext *persistenceContext) {
        NSFetchRequest *fetchRequest = [NSFetchRequest fetchRequestWithEntityName:@""];
        NSError *error = nil;

        [mutationContext executeFetchRequest:fetchRequest error:&error];

        return YES;
    }];
}

@end
