//
//  ViewController.m
//  UISample_4
//
//  Created by Imran Naseem on 21/06/16.
//  Copyright © 2016 Imran Naseem. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    self.title=@"Reports";
    
    
    self.view.backgroundColor=[UIColor whiteColor];
    
    if(self.view.frame.size.width>self.view.frame.size.height)
    {
        screenFrame=CGRectMake(0, 0,self.view.frame.size.height,self.view.frame.size.width);
    }
    else
    {
        screenFrame=self.view.frame;
    }
    
    viewWidth = screenFrame.size.width;
    viewHeight = screenFrame.size.height;
    
    UILabel *calculatorTypeLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.25*viewWidth/10,1.25*viewHeight/10, 4*viewWidth/10,0.5*viewHeight/10)];
    calculatorTypeLabel.text = @"Calculator Type :";
    calculatorTypeLabel.font=[UIFont boldSystemFontOfSize:14.0];
    calculatorTypeLabel.textColor=[UIColor lightGrayColor];
    calculatorTypeLabel.textAlignment = NSTextAlignmentRight;
    [self.view addSubview:calculatorTypeLabel];
    
    UIImageView *gratuityImageView=[[UIImageView alloc]init];
    gratuityImageView.frame=CGRectMake(8.75*viewWidth/10, 1.4*viewHeight/10, 0.25*viewHeight/10, 0.25*viewHeight/10);
    gratuityImageView.image=[UIImage imageNamed:@""];
    gratuityImageView.userInteractionEnabled=YES;
    gratuityImageView.backgroundColor=[UIColor lightGrayColor];
    [self.view addSubview:gratuityImageView];
    
    UIButton *gratuityButton=[UIButton buttonWithType:UIButtonTypeCustom];
    gratuityButton.frame=CGRectMake(5*viewWidth/10,1.25*viewHeight/10,4.5*viewWidth/10,0.5*viewHeight/10);
    [gratuityButton setTitle:@"Gratuity" forState:UIControlStateNormal];
    gratuityButton.titleLabel.textAlignment=NSTextAlignmentLeft;
    gratuityButton.titleLabel.font=[UIFont boldSystemFontOfSize:14.0];
    gratuityButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    [gratuityButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    gratuityButton.backgroundColor=[UIColor magentaColor];
    [gratuityButton addTarget:self action:@selector(gratuityButtonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:gratuityButton];
    
    UILabel *clientIDLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.25*viewWidth/10,2*viewHeight/10, 4*viewWidth/10,0.5*viewHeight/10)];
    clientIDLabel.text = @"Client ID :";
    clientIDLabel.font=[UIFont boldSystemFontOfSize:14.0];
    clientIDLabel.textColor=[UIColor lightGrayColor];
    clientIDLabel.textAlignment = NSTextAlignmentRight;
    [self.view addSubview:clientIDLabel];
    
    UIImageView *selectClientIDImageView=[[UIImageView alloc]init];
    selectClientIDImageView.frame=CGRectMake(8.75*viewWidth/10, 2.15*viewHeight/10, 0.25*viewHeight/10, 0.25*viewHeight/10);
    selectClientIDImageView.image=[UIImage imageNamed:@""];
    selectClientIDImageView.userInteractionEnabled=YES;
    selectClientIDImageView.backgroundColor=[UIColor lightGrayColor];
    [self.view addSubview:selectClientIDImageView];
    
    UIButton *selClientIdButton=[UIButton buttonWithType:UIButtonTypeCustom];
    selClientIdButton.frame=CGRectMake(5*viewWidth/10,2*viewHeight/10,4.5*viewWidth/10,0.5*viewHeight/10);
    [selClientIdButton setTitle:@"select client id" forState:UIControlStateNormal];
    selClientIdButton.titleLabel.textAlignment=NSTextAlignmentLeft;
    selClientIdButton.titleLabel.font=[UIFont boldSystemFontOfSize:14.0];
    selClientIdButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    [selClientIdButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    selClientIdButton.backgroundColor=[UIColor magentaColor];
    [selClientIdButton addTarget:self action:@selector(selClientIdButtonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:selClientIdButton];
    
    UILabel *associateIDLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.25*viewWidth/10,2.75*viewHeight/10, 4*viewWidth/10,0.5*viewHeight/10)];
    associateIDLabel.text = @"Associalte Id :";
    associateIDLabel.font=[UIFont boldSystemFontOfSize:14.0];
    associateIDLabel.textColor=[UIColor lightGrayColor];
    associateIDLabel.textAlignment = NSTextAlignmentRight;
    [self.view addSubview:associateIDLabel];
    
    UIImageView *setAssociateIdImageView=[[UIImageView alloc]init];
    setAssociateIdImageView.frame=CGRectMake(8.75*viewWidth/10, 2.9*viewHeight/10, 0.25*viewHeight/10, 0.25*viewHeight/10);
    setAssociateIdImageView.image=[UIImage imageNamed:@""];
    setAssociateIdImageView.userInteractionEnabled=YES;
    setAssociateIdImageView.backgroundColor=[UIColor lightGrayColor];
    [self.view addSubview:setAssociateIdImageView];
    
    UIButton *setAssociateIdButton=[UIButton buttonWithType:UIButtonTypeCustom];
    setAssociateIdButton.frame=CGRectMake(5*viewWidth/10,2.75*viewHeight/10,4.5*viewWidth/10,0.5*viewHeight/10);
    [setAssociateIdButton setTitle:@"select associate id" forState:UIControlStateNormal];
    setAssociateIdButton.titleLabel.textAlignment=NSTextAlignmentLeft;
    setAssociateIdButton.titleLabel.font=[UIFont boldSystemFontOfSize:14.0];
    setAssociateIdButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    [setAssociateIdButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    setAssociateIdButton.backgroundColor=[UIColor magentaColor];
    [setAssociateIdButton addTarget:self action:@selector(setAssociateIdButtonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:setAssociateIdButton];
    
    UILabel *numberOfYearsLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.25*viewWidth/10,3.5*viewHeight/10, 4*viewWidth/10,0.5*viewHeight/10)];
    numberOfYearsLabel.text = @"Number Of Years :";
    numberOfYearsLabel.font=[UIFont boldSystemFontOfSize:14.0];
    numberOfYearsLabel.textColor=[UIColor lightGrayColor];
    numberOfYearsLabel.textAlignment = NSTextAlignmentRight;
    [self.view addSubview:numberOfYearsLabel];

    UITextField *enterYearTextField=[[UITextField alloc]init];
    enterYearTextField.frame=CGRectMake(5*viewWidth/10, 3.5*viewHeight/10,5*viewWidth/10, 0.5*viewHeight/10);
    enterYearTextField.delegate=self;
    enterYearTextField.font=[UIFont boldSystemFontOfSize:13.0];
    enterYearTextField.textColor=[UIColor lightGrayColor];
    enterYearTextField.placeholder=@"enter year";
    [self.view addSubview:enterYearTextField];
    
    UILabel *basicDALabel = [[UILabel alloc] initWithFrame:CGRectMake(0.25*viewWidth/10,4.25*viewHeight/10, 4*viewWidth/10,0.5*viewHeight/10)];
    basicDALabel.text = @"Basic + DA :";
    basicDALabel.font=[UIFont boldSystemFontOfSize:14.0];
    basicDALabel.textColor=[UIColor lightGrayColor];
    basicDALabel.textAlignment = NSTextAlignmentRight;
    [self.view addSubview:basicDALabel];
    
    UITextField *enterBasicAndDATextField=[[UITextField alloc]init];
    enterBasicAndDATextField.frame=CGRectMake(5*viewWidth/10, 4.25*viewHeight/10,5*viewWidth/10, 0.5*viewHeight/10);
    enterBasicAndDATextField.delegate=self;
    enterBasicAndDATextField.font=[UIFont boldSystemFontOfSize:13.0];
    enterBasicAndDATextField.textColor=[UIColor lightGrayColor];
    enterBasicAndDATextField.placeholder=@"enter basic and da";
    [self.view addSubview:enterBasicAndDATextField];
    
    UILabel *gratuityLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.25*viewWidth/10,5*viewHeight/10, 4*viewWidth/10,0.5*viewHeight/10)];
    gratuityLabel.text = @"Gratuity :";
    gratuityLabel.font=[UIFont boldSystemFontOfSize:14.0];
    gratuityLabel.textColor=[UIColor lightGrayColor];
    gratuityLabel.textAlignment = NSTextAlignmentRight;
    [self.view addSubview:gratuityLabel];
    
    UITextField *gratuityTextField=[[UITextField alloc]init];
    gratuityTextField.frame=CGRectMake(5*viewWidth/10, 5*viewHeight/10,5*viewWidth/10, 0.5*viewHeight/10);
    gratuityTextField.delegate=self;
    gratuityTextField.font=[UIFont boldSystemFontOfSize:13.0];
    gratuityTextField.textColor=[UIColor lightGrayColor];
    gratuityTextField.placeholder=@"gratuity";
    [self.view addSubview:gratuityTextField];
    
    UIButton *calculateButton=[UIButton buttonWithType:UIButtonTypeCustom];
    calculateButton.frame=CGRectMake(1.5*viewWidth/10,6.5*viewHeight/10,3*viewWidth/10,0.5*viewHeight/10);
    [calculateButton setTitle:@"Calculate" forState:UIControlStateNormal];
    calculateButton.titleLabel.textAlignment=NSTextAlignmentLeft;
    calculateButton.titleLabel.font=[UIFont boldSystemFontOfSize:14.0];
    [calculateButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    calculateButton.backgroundColor=[UIColor magentaColor];
    [calculateButton addTarget:self action:@selector(calculateButtonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:calculateButton];

    
    UIButton *clearButton=[UIButton buttonWithType:UIButtonTypeCustom];
    clearButton.frame=CGRectMake(5.5*viewWidth/10,6.5*viewHeight/10,3*viewWidth/10,0.5*viewHeight/10);
    [clearButton setTitle:@"Clear" forState:UIControlStateNormal];
    clearButton.titleLabel.textAlignment=NSTextAlignmentLeft;
    clearButton.titleLabel.font=[UIFont boldSystemFontOfSize:14.0];
    [clearButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    clearButton.backgroundColor=[UIColor magentaColor];
    [clearButton addTarget:self action:@selector(clearButtonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:clearButton];

}

-(void)clearButtonAction
{
    
}

-(void)calculateButtonAction
{
    
}

-(void)setAssociateIdButtonAction
{
    
}

-(void)selClientIdButtonAction
{
    
}

-(void)gratuityButtonAction
{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
