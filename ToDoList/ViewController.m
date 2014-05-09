 //
//  ViewController.m
//  ToDoList
//
//  Created by Jack Gerrity on 5/9/14.
//
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

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
    
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0,64,320,320)];
    imageView.image = [UIImage imageNamed:@"gitHubPic.png"];
    
    [self.view addSubview:imageView];
    // Do any additional setup after loading the view.
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(50, 384, 220, 50)];
    button.backgroundColor = [UIColor greenColor];
    [button setTitle:@"My GitHub Page" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(didTapMyButton:) forControlEvents:UIControlEventTouchUpInside];
    //Show button
    [self.view addSubview:button];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)didTapMyButton:(UIButton *)sender{
    [[UIApplication sharedApplication] openURL: [NSURL URLWithString:@"https://github.com/JackGerrity"]];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
