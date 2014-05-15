//
//  FirstViewController.h
//  tab8
//
//  Created by Fernando Gomez on 28-04-14.
//  Copyright (c) 2014 Fernando Gomez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>
#import "TableCell.h"
@interface FirstViewController : UIViewController<ADBannerViewDelegate, UITableViewDataSource, UITableViewDelegate,TableCellDelegate>

{
    
}




@property (strong, nonatomic) NSMutableArray *tweetsArray;

@property (strong, nonatomic) IBOutlet ADBannerView *banner;




@end
