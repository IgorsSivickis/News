//
//  neData.m
//  News
//
//  Created by Igors.Sivickis on 5/26/14.
//  Copyright (c) 2014 Accenture. All rights reserved.
//

#import "neData.h"

@implementation neData

+(NSArray *)fetchData
{
    NSMutableArray *result = [NSMutableArray array];
    
    neData *item;
    
    item = [[neData alloc] init];
    item.category = @"wer";
    item.title = @"sgdgdf";
    item.author = @"hjkhjk";
    item.createdOn = @"iutyrtytyt";
    item.text = @"tdkfjd lkjdlkg jdl j glkdjg ldkgj ldkg jdlkg d jgdlk yuy";
    item.imageName = @"1_img.jpg";
    [result addObject:item];
    
    item = [[neData alloc] init];
    item.category = @"werter";
    item.title = @"sgdertgdf";
    item.author = @"hjertkhjk";
    item.createdOn = @"irtyutyrtytyt";
    item.text = @"tdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdkfjd lkjdlkrtyrtytrg jdl j glkdjgdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdkfjd lkjdlkrtyrtytrg jdl j glkdjgdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdkfjd lkjdlkrtyrtytrg jdl j glkdjgdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdkfjd lkjdlkrtyrtytrg jdl j glkdjgdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdkfjd lkjdlkrtyrtytrg jdl j glkdjgdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdkfjd lkjdlkrtyrtytrg jdl j glkdjgdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdkfjd lkjdlkrtyrtytrg jdl j glkdjg ldkgj ldkg jdlkg d jgdlk yuy";
    item.imageName = @"2_img.jpg";
    [result addObject:item];
    
    return result;
    
}

@end
