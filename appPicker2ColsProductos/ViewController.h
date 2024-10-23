//
//  ViewController.h
//  appPicker2ColsProductos
//
//  Created by Shalom Isai Salazar Arguijo on 22/10/24.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIPickerViewDelegate,UIPickerViewDataSource>
@property (weak, nonatomic) IBOutlet UILabel *lblTexto1;
@property (weak, nonatomic) IBOutlet UIImageView *imgVProd1;
@property (weak, nonatomic) IBOutlet UIPickerView *pckVSelector1;


@end

