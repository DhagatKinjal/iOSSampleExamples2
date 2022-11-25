//
//  ViewController.m
//  CustomizeView
//
//  Created by Credencys on 24/06/13.
//  Copyright (c) 2013 CredencysSolutions. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"background.jpg"]]];
    
//    scrollview=[[UIScrollView alloc] init];
//    scrollview.frame = CGRectMake(5,5,320,480);
//    scrollview.showsVerticalScrollIndicator=YES;
//    scrollview.scrollEnabled=YES;
//    scrollview.userInteractionEnabled=YES;
//    [self.view addSubview:scrollview];
//    scrollview.contentSize = CGSizeMake(320,480);//You Can Edit this with your requirement
    
    txt1 = [[UITextField alloc] init];
    txt1.frame = CGRectMake(50, 50, 150, 30);
    [txt1 setFont:[UIFont fontWithName:@"Times New Roman" size:30]];
    [txt1 setBorderStyle:UITextBorderStyleBezel];
    [self.view addSubview:txt1];
    //[scrollview addSubview:txt1];
    txt1.delegate=self;
    
    txt2 = [[UITextField alloc] init];
    txt2.frame = CGRectMake(50, 110, 150, 30);
    [txt2 setFont:[UIFont fontWithName:@"Times New Roman" size:30]];
    [txt2 setBorderStyle:UITextBorderStyleBezel];
    [self.view addSubview:txt2];
    //[scrollview addSubview:txt2];
    txt2.delegate=self;
        
    txtv1 = [[UITextView alloc] init];
    txtv1.frame = CGRectMake(50,170, 150, 30);
    [txtv1 setFont:[UIFont fontWithName:@"Times New Roman" size:30]];
    //[txtv1 setBorderStyle:UITextBorderStyleBezel];
    [self.view addSubview:txtv1];
    //[scrollview addSubview:txtv1];
    txtv1.delegate=self;
        
   txtv2 = [[UITextView alloc] init];
    txtv2.frame = CGRectMake(50, 230, 150, 30);
    [txtv2 setFont:[UIFont fontWithName:@"Times New Roman" size:30]];
    //[txtv2 setBorderStyle:UITextBorderStyleBezel];
    [self.view addSubview:txtv2];
    //[scrollview addSubview:txtv2];
    txtv2.delegate=self;
    
    
    Btn = [UIButton buttonWithType:UIButtonTypeCustom];
    Btn.frame = CGRectMake(50, 290, 150, 30);
    [Btn setBackgroundColor:[UIColor blackColor]];
    Btn.titleLabel.text = @"Submit";
    Btn.titleLabel.textColor = [UIColor blackColor];
    [Btn setTitle:@"Submit" forState:UIControlStateNormal];
    [Btn addTarget:self action:@selector(Submit:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:Btn];
    //[scrollview addSubview:Btn];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

//- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
//{
//    // scrollview.contentSize = CGSizeMake(320,960);//You Can Edit this with your requirement
//
//    return YES;
//}
- (BOOL)textViewShouldBeginEditing:(UITextView *)textView
{
    
    txt1.Hidden= YES;
    txtv1.frame=CGRectMake(50,50,150,30);
    txtv2.frame=CGRectMake(50, 110, 150, 30);
    Btn.frame = CGRectMake(50, 170, 150, 30);
   
    return YES;
    
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField//textfield return keyboard
{
    [textField resignFirstResponder];
    
    return YES;
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text//textfield return keyboard
{
    
    if([text isEqualToString:@"\n"]) {
        [textView resignFirstResponder];
        txt1.Hidden= NO;
        txtv1.frame=CGRectMake(50,170,150,30);
        txtv2.frame=CGRectMake(50, 230, 150, 30);
        Btn.frame = CGRectMake(50, 290, 150, 30);

        return NO;
    }
    
    return YES;
}

-(void)Submit:(id*)sender
{
    
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //sending data using get method...
//    NSLog(@"%@",txt1.text);
//    if (txt1.text==NULL)
//    {
//        txt1.text=@"";//textView.text = @\"Test\"
//              
//    }
//    if (txt2.text==NULL)
//    {
//        txt2.text=@"";
//
//    }
//    NSString *urlStr=[NSString stringWithFormat:@"http://www.bevond.com/ordavia/index.php/CustomerApi/updateCustomer?fname=%@&lname=%@&customer_user_name=%@&address=%@&device_os_type=2",txt1.text,txt2.text,txtv1.text,txtv2.text];
//    NSLog(@"%@",urlStr);
//    NSURL *url = [[NSURL alloc]initWithString:urlStr];
//    NSURLRequest *req=[NSURLRequest requestWithURL:url];
//    NSURLConnection *conn=[[NSURLConnection alloc]initWithRequest:req delegate:self];
//    NSLog(@"%@",conn);
//    if (conn) {
//        UIAlertView * alert = [[UIAlertView alloc]initWithTitle:@"" message:@"Your data is Submitted" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
//        [alert show];
//        [alert release];
//    }
//    xmldata=[[NSMutableData alloc]init];
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    //sending data using post method...
    NSLog(@"%@",txt1.text);
    if (txt1.text==NULL)
    {
        txt1.text=@"";//textView.text = @\"Test\"
    }
    if (txt2.text==NULL)
    {
        txt2.text=@"";
    }
    NSString *post =[NSString stringWithFormat:@"fname=%@&lname=%@&customer_user_name=%@&address=%@&device_os_type=2",txt1.text,txt2.text,txtv1.text,txtv2.text];
    NSURL *url = [NSURL URLWithString:@"http://www.bevond.com/ordavia/index.php/CustomerApi/updateCustomer?"];
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:url];
    [request setHTTPMethod:@"POST"];
    [request setHTTPBody:[post dataUsingEncoding:NSUTF8StringEncoding]];
    
    NSURLConnection *connection = [NSURLConnection connectionWithRequest:request delegate:self];
    xmldata=[[NSMutableData alloc]init];
    if(connection)
    {
        UIAlertView * alert = [[UIAlertView alloc]initWithTitle:@"" message:@"Your data is Submitted" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        [alert show];
        [alert release];
    }
    NSLog(@"%@",request);
    [connection start];
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    [xmldata appendData:data];
    NSString *str = [[NSString alloc] initWithData:xmldata encoding:NSUTF8StringEncoding];
    NSLog(@"\n\n\nstr=%@\n\n\n",str);
    //NSLog(@"%@",xmldata);
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
        
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    UIAlertView *alt=[[UIAlertView alloc]initWithTitle:@"status" message:@"Error on connection" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    [alt show];
    [alt release];
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
