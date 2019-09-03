
# react-native-cloud-payments-sdk

## Getting started

`$ npm install react-native-cloud-payments-sdk --save`

#### IOS

`$ cd ios && pod install`

## Usage
```javascript
import RNReactNativeCloudPaymentsSdk from 'react-native-cloud-payments-sdk';

 const demoCard = {
    number: "5105105105105100",
    extDate: Platform.OS === "ios" ? "10/21" : "1021",
    cvvCode: "123",
  };
  
  const publicId = 'pk_id'; // ADD PUBLIC ID

  RNReactNativeCloudPaymentsSdk.isValidNumber(demoCard.number, demoCard.extDate, demoCard.cvvCode)
    .then(cardStatus => {
      console.log(cardStatus); // true
    });
    
  RNReactNativeCloudPaymentsSdk.getType(demoCard.number, demoCard.extDate, demoCard.cvvCode)
    .then(cardType => {
      console.log(cardType); // MasterCard
    });
    
  RNReactNativeCloudPaymentsSdk.createCryptogram(demoCard.number, demoCard.extDate, demoCard.cvvCode, publicId)
    .then(cryptogram => {
      console.log(cryptogram); // 025105105100/11004bpp9ltxt6c0jpdk8ErH+N33N9jZBm9Gr0jO7SVslLg/RdWYyjG5wiLrzmrUserhfblFVydij4wpjDvHH4kRnOskjnbn1XrPI8X9LMkvlR5Pkc63U5puXtnS0rkswS6JYaSErcKMq4TazimKY4rGobvhhYfg45LWdLlX0602t7ZybbaBTMff6wtta870/244s65GTbCI1zt6odDMckpEuiczwM68m6j0Rn2IuKpK8kR58x7tFFc7fWrrW0RHvLNxQIW9P+SpsySoiA4xaZfC7lXL57O80Ye6JDi6PWAim5dENNxIc81T1kmXnKn94x8h2+XS83yMHHfTUOeDb7J1fLg==
    });
  
