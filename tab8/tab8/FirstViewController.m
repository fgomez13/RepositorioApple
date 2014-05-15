//
//  FirstViewController.m
//  tab8
//
//  Created by Fernando Gomez on 28-04-14.
//  Copyright (c) 2014 Fernando Gomez. All rights reserved.
//

#import "FirstViewController.h"
 #import <QuartzCore/QuartzCore.h>


@interface FirstViewController ()


@property (strong, nonatomic) IBOutlet UITableView *tableView;



@end

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
  
    self.banner.delegate = self;
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    //2
    NSDictionary *dict1 = [NSDictionary dictionaryWithObjectsAndKeys:
                           @"BatchImage0001_Resized.png",@"image",
                           @"Always put your fears behind you and your dreams in front of you.",@"tweet", nil];
    NSDictionary *dict2 = [NSDictionary dictionaryWithObjectsAndKeys:
                           @"2.png",@"image",
                           @"A relationship with no trust is like a cell phone with no service, all you can do is play games.",@"tweet", nil];
    NSDictionary *dict3 = [NSDictionary dictionaryWithObjectsAndKeys:
                           @"3.png",@"image",
                           @"People should stop talking about their problem and start thinking about the solution.",@"tweet", nil];
    
    self.tweetsArray = [NSMutableArray arrayWithObjects:dict1,dict2,dict3, nil];
    
 
    
    
    
   /* [[self.viewHoss2 layer] setCornerRadius:15.0f];
    [[self.viewHoss2 layer] setMasksToBounds:YES];
    [[self.viewHoss2 layer] setBorderWidth:0.7f];
    */
  
    
  
    
 
   /* CAGradientLayer *gradient = [CAGradientLayer layer];
    gradient.frame = viewHoss2.bounds;
    gradient.colors = @[(id)[[UIColor colorWithRed:0.8 green:0.8 blue:0.8 alpha:1.0] CGColor],
                        (id)[[UIColor colorWithRed:0.9 green:0.9 blue:0.9 alpha:1.0] CGColor],
                        (id)[[UIColor colorWithRed:0.8 green:0.8 blue:0.8 alpha:1.0] CGColor]];
    [viewHoss2.layer insertSublayer:gradient atIndex:0];
    */
    
   /* UITextView* textView = [[UITextView alloc]
                            initWithFrame:CGRectMake(160,160,400,400)];
    
    textView.layer.cornerRadius = 15.0;
    textView.clipsToBounds = YES;
    
    textView.text = @"BARBERA\n\nBarbera is grown extensively ...";
    
    textView.font = [UIFont fontWithName:@"Helvetica" size:15];
    textView.font = [UIFont boldSystemFontOfSize:15];
    textView.backgroundColor = [UIColor whiteColor];
    textView.alpha = 0.95;
    textView.scrollEnabled = YES;
    textView.pagingEnabled = YES;
    textView.editable = NO;
    
    [self.view addSubview:textView];
    */
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (BOOL)bannerViewActionShouldBegin:(ADBannerView *)banner willLeaveApplication:(BOOL)willLeave
{
    return YES;
}

- (void)bannerViewDidLoadAd:(ADBannerView *)banner
{

 


}

- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error
{
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.tweetsArray.count;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 150;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"TableCellID";
    
    TableCell *tablecell = (TableCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    //3.1 you do not need this if you have set TableCellID as identifier in the storyboard (else you can remove the comments on this code). Do not use this code if you are following this tutorial
    //if (cell == nil)
    //    {
    //        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
    //   }
    
    //3.2
    NSDictionary * dict = [self.tweetsArray objectAtIndex:indexPath.row];
    
    tablecell.title.text = [dict objectForKey:@"tweet"];
    
    UIImage *imageIcon = [UIImage imageNamed:[dict objectForKey:@"image"]];
    [tablecell.cellImage setImage:imageIcon];
    
    //4
    tablecell.delegate = self;
    return tablecell;
    
}

@end
