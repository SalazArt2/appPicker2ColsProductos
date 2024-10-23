//
//  ViewController.m
//  appPicker2ColsProductos
//
//  Created by Shalom Isai Salazar Arguijo on 22/10/24.
//

#import "ViewController.h"

@interface ViewController (){
    NSArray *productos;
    NSArray *colores;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    productos=@[@"Pantalla LCD",@"IPad",@"Bicicleta",@"Motocicleta",@"Carro",@"Camioneta"];
    colores=@[@"Rojo🦀",@"Verde🦖",@"Azul🦕",@"Gris🐺",@"Naranja🐈",@"Aleatorio🦄"];
    self.pckVSelector1.delegate=self;
    self.pckVSelector1.dataSource=self;
    self.lblTexto1.text=[NSString stringWithFormat:@"%@, %@",[productos objectAtIndex:0],[colores objectAtIndex:0]];
    self.imgVProd1.image=[UIImage imageNamed:@"Pantalla LCD"];
    UIColor *color=[UIColor colorWithRed:(255/255) green:(0/255) blue:(0/255) alpha:1];
    self.view.backgroundColor=color;
    NSLog(@"%@",self.lblTexto1.text);
}


- (NSInteger)numberOfComponentsInPickerView:(nonnull UIPickerView *)pickerView {
    return 2;
}

- (NSInteger)pickerView:(nonnull UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    if(component==0){
        return productos.count;
    }else{
        return colores.count;
    }
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    if(component==0)
    {
        return productos[row];
    }else{
        return colores[row];
    }
    return nil;
}
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    //    self.lblTexto1.text=[NSString stringWithFormat:@"%@, %@",[productos objectAtIndex:[self.pckVSelector1 selectedRowInComponent:0]],[colores objectAtIndex:[self.pckVSelector1 selectedRowInComponent:1]]];
    self.lblTexto1.text=[NSString stringWithFormat:@"%@, %@",productos[[self.pckVSelector1 selectedRowInComponent:0]],colores [[self.pckVSelector1 selectedRowInComponent:1]]];
    if(component==0){
        self.imgVProd1.image=[UIImage imageNamed:productos[row]];
        
    }else{
        UIColor *color;
        switch(row){
            case 0://Rojo
                color = [UIColor colorWithRed:(255/255.0) green:(0/255.0) blue:(0/255.0) alpha:1];
                break;
            case 1://Verde
                color = [UIColor colorWithRed:(0/255.0) green:(255/255.0) blue:(0/255.0) alpha:1];
                break;
            case 2://Azul
                color = [UIColor colorWithRed:(0/255.0) green:(0/255.0) blue:(255/255.0) alpha:1];
                break;
            case 3://Gris
                color = [UIColor grayColor];
                break;
            case 4://Naranja
                color = [UIColor orangeColor];
                break;
            case 5: {
                // Generar valores aleatorios para r, g, y b
                uint32_t r = arc4random_uniform(256);
                uint32_t g = arc4random_uniform(256);
                uint32_t b = arc4random_uniform(256);
                color = [UIColor colorWithRed:(r/255.0) green:(g/255.0) blue:(b/255.0) alpha:1];
                break;
            }
        }
        self.view.backgroundColor = color;
    }
}

@end
