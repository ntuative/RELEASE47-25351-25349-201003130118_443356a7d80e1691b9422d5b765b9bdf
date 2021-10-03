package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1260:BigInteger;
      
      private var var_552:BigInteger;
      
      private var var_1501:BigInteger;
      
      private var var_1502:BigInteger;
      
      private var var_1994:BigInteger;
      
      private var var_1757:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         var_1260 = param1;
         var_1501 = param2;
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return var_1994.toRadix(param1);
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         var_1502 = new BigInteger();
         var_1502.fromRadix(param1,param2);
         var_1994 = var_1502.modPow(var_552,var_1260);
         return getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return var_1757.toRadix(param1);
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + var_1260.toString() + ",generator: " + var_1501.toString() + ",secret: " + param1);
         var_552 = new BigInteger();
         var_552.fromRadix(param1,param2);
         var_1757 = var_1501.modPow(var_552,var_1260);
         return true;
      }
   }
}
