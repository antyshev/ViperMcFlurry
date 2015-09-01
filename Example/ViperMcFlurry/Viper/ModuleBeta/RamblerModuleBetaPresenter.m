//
//  RamblerModuleBetaPresenter.m
//  Проект:   ViperMcFlurry
//
//  Модуль:   RamblerModuleBeta
//  Описание: Второй модуль-пример для Viper IntermoduleDataTransfer
//
//  Создан Andrey Zarembo-Godzyatsky  10/08/15
//  Egor Tolstoy 2015
//

#import "RamblerModuleBetaPresenter.h"
#import "RamblerModuleBetaViewInput.h"
#import "RamblerModuleBetaInteractorInput.h"
#import "RamblerModuleBetaRouterInput.h"

@interface RamblerModuleBetaPresenter()

@property (nonatomic,strong) NSString* exampleString;

@end

@implementation RamblerModuleBetaPresenter

#pragma mark - RamblerModuleBetaConfigurator

- (void)configureWithExampleString:(NSString*)exampleString {
    // Intermodule Data Transfer Example. Вызов. Шаг 7. Презентер в роли конфигуратора получает данные.
    self.exampleString = exampleString;
}

#pragma mark - RamblerModuleBetaViewOutput

- (void)setupView {
    [self.view setExampleString:self.exampleString];
}

- (void)didClickRemoveModuleButton {
    [self.router removeModule];
}

#pragma mark - RamblerModuleBetaInteractorOutput

@end