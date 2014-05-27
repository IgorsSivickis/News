//
//  neViewController.m
//  News
//
//  Created by Igors.Sivickis on 5/26/14.
//  Copyright (c) 2014 Accenture. All rights reserved.
//

#import "neViewController.h"
#import "neImageCell.h"
#import "neData.h"
#import "neDetailViewController.h"

@interface neViewController ()

@end

@implementation neViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.navigationItem.title = @"News";
    _data = [neData fetchData];
    
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
    
    neData *item = [_data objectAtIndex:indexPath.row];
    cell.celltextLabel.text = item.title;
    cell.cellImageCell.image = [UIImage imageNamed:item.imageName];
    return  cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    if (indexPath){
        neData *item = [_data objectAtIndex:indexPath.row];
        [segue.destinationViewController setDetail:item];
    }
   
}

@end
