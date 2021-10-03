package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1850:int;
      
      private var var_1460:int;
      
      private var var_1848:int;
      
      private var var_1849:int;
      
      private var var_1847:int;
      
      private var var_1461:int;
      
      private var var_1667:int;
      
      private var var_1846:Boolean;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get offerMaxPrice() : int
      {
         return var_1850;
      }
      
      public function get tokenBatchPrice() : int
      {
         return var_1460;
      }
      
      public function get averagePricePeriod() : int
      {
         return var_1667;
      }
      
      public function get offerMinPrice() : int
      {
         return var_1849;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get expirationHours() : int
      {
         return var_1847;
      }
      
      public function get tokenBatchSize() : int
      {
         return var_1461;
      }
      
      public function get commission() : int
      {
         return var_1848;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1846 = param1.readBoolean();
         var_1848 = param1.readInteger();
         var_1460 = param1.readInteger();
         var_1461 = param1.readInteger();
         var_1849 = param1.readInteger();
         var_1850 = param1.readInteger();
         var_1847 = param1.readInteger();
         var_1667 = param1.readInteger();
         return true;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1846;
      }
   }
}
