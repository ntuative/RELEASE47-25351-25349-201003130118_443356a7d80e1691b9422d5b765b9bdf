package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoucherRedeemOkMessageParser implements IMessageParser
   {
       
      
      private var var_1231:String = "";
      
      private var var_1232:String = "";
      
      public function VoucherRedeemOkMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         var_1232 = "";
         var_1231 = "";
         return true;
      }
      
      public function get productName() : String
      {
         return var_1231;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1232 = param1.readString();
         var_1231 = param1.readString();
         return true;
      }
      
      public function get productDescription() : String
      {
         return var_1232;
      }
   }
}
