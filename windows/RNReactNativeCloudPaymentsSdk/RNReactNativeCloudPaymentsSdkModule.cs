using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace React.Native.Cloud.Payments.Sdk.RNReactNativeCloudPaymentsSdk
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNReactNativeCloudPaymentsSdkModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNReactNativeCloudPaymentsSdkModule"/>.
        /// </summary>
        internal RNReactNativeCloudPaymentsSdkModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNReactNativeCloudPaymentsSdk";
            }
        }
    }
}
