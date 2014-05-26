//
//  neData.h
//  News
//
//  Created by Igors.Sivickis on 5/26/14.
//  Copyright (c) 2014 Accenture. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface neData : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *text;
@property (nonatomic, copy) NSString *imageName;
@property (nonatomic, copy) NSString *category;
@property (nonatomic, copy) NSString *createdOn;
@property (nonatomic, copy) NSString *author;

+(NSArray *)fetchData;

@end
