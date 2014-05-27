//
//  neViewController.h
//  News
//
//  Created by Igors.Sivickis on 5/26/14.
//  Copyright (c) 2014 Accenture. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface neViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    NSArray *_data;
}
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
