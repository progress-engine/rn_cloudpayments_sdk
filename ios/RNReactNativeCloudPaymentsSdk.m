#import "RNReactNativeCloudPaymentsSdk.h"
#import "Card.h"

@implementation RNReactNativeCloudPaymentsSdk

- (dispatch_queue_t)methodQueue
{
	return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(isValidNumber: (NSString *)cardNumber
				  block: (RCTResponseSenderBlock)block
{
	if([Card isCardNumberValid: cardNumber]) {
		block(@YES);
	} else {
		block(@NO);
	}
};

RCT_EXPORT_METHOD(getType: (NSString *)cardNumber
				  block: (RCTPromiseResolveBlock)block
{
	CardType cardType = [Card cardTypeFromCardNumber: cardNumber];
	NSString *cardTypeString = [Card cardTypeToString: cardType];

	block(cardTypeString);
}

RCT_EXPORT_METHOD(createCryptogram: (NSString *)cardNumber
				  cardExp: (NSString *)cardExp
				  cardCvv: (NSString *)cardCvv
				  publicId: (NSString *)publicId
				  block: (RCTPromiseResolveBlock)block
{
	Card *_card = [[Card alloc] init];

	NSString *cryptogram = [_card makeCardCryptogramPacket: cardNumber andExpDate:cardExp andCVV:cardCvv andMerchantPublicID:publicId];

	block(cryptogram);
}
@end
