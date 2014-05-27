//
//  neViewController.m
//  News
//
//  Created by Igors.Sivickis on 5/26/14.
//  Copyright (c) 2014 Accenture. All rights reserved.
//

#import "neViewController.h"
#import "neImageCell.h"
#import "neDetailViewController.h"
#import "RSSParser.h"
#import "UIImageView+AFNetworking.h"

@interface neViewController ()

@end

@implementation neViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.navigationItem.title = @"News";
    
    NSURL *url = [NSURL URLWithString:@"http://itdox.ru/feed"];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
    [RSSParser parseRSSFeedForRequest:request
                              success:^(NSArray *feedItems) {
                                  _data = feedItems;
                                  [self.tableView reloadData];
                                  
                              }
                              failure:^(NSError *error){
                                  NSLog(@"%@", error);
                              }];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_data count];
}

-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *const CellId = @"Cell";
    
    neImageCell *cell = [tableView dequeueReusableCellWithIdentifier:CellId];
    
    RSSItem *item = [_data objectAtIndex:indexPath.row];
    cell.celltextLabel.text = item.title;
    
    NSArray *images = [item imagesFromContent];
    
    if ([images count]>0){
        NSString *imageURLString = [images objectAtIndex:0];
        NSURL *imageURL = [NSURL URLWithString:imageURLString];
        [cell.cellImageCell setImageWithURL:imageURL];
    }
    return  cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    if (indexPath){
        RSSItem *item = [_data objectAtIndex:indexPath.row];
        [segue.destinationViewController setDetail:item];
    }
   
}

@end
