//
//  TTProjectController.h
//  Time-Tracker
//
//  Created by Sergio Perez on 10/1/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Project.h"

@interface TTProjectController : NSObject

@property (nonatomic, strong, readonly) NSArray *projects;

+ (TTProjectController*) sharedInstance;

- (void)addProject:(Project *)project;

- (void)removeProject:(Project *)project;

- (void)synchronize;

@end
