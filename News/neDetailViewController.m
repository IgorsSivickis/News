//
//  neDetailViewController.m
//  News
//
//  Created by Igors.Sivickis on 5/26/14.
//  Copyright (c) 2014 Accenture. All rights reserved.
//

#import "neDetailViewController.h"
#import "UIImageView+AFNetworking.h"

@interface neDetailViewController ()

@end

@implementation neDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.title = @"Some news";
    [self reloadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setDetail:(RSSItem *)detail
{
    _detail = detail;
}

-(void)reloadData
{
    if (!_detail){
        return;
    }
    
    self.titleLabel.text = _detail.title;
    self.textView.text = _detail.itemDescription;
    
    NSArray *images = [_detail imagesFromContent];
    
    if ([images count]>0){
        NSString *imageURLString = [images objectAtIndex:0];
        NSURL *imageURL = [NSURL URLWithString:imageURLString];
        [self.imageView setImageWithURL:imageURL];
    }
    
    CGRect contentViewFrame = _contentView.frame;
    contentViewFrame.size.height = _textView.contentSize.height - _textView.frame.size.height;
    _contentView.frame = contentViewFrame;
    _scrollView.contentSize = _contentView.frame.size;
}

@end
