package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_1542:Array;
      
      private var var_1618:int;
      
      private var var_1617:int;
      
      private var var_1616:int;
      
      private var var_1619:int;
      
      private var _dayOffsets:Array;
      
      private var var_1615:int;
      
      private var var_1543:Array;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get dayOffsets() : Array
      {
         return _dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return var_1542;
      }
      
      public function get furniTypeId() : int
      {
         return var_1617;
      }
      
      public function get historyLength() : int
      {
         return var_1619;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get furniCategoryId() : int
      {
         return var_1616;
      }
      
      public function get offerCount() : int
      {
         return var_1615;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1543;
      }
      
      public function get averagePrice() : int
      {
         return var_1618;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1618 = param1.readInteger();
         var_1615 = param1.readInteger();
         var_1619 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _dayOffsets = [];
         var_1542 = [];
         var_1543 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _dayOffsets.push(param1.readInteger());
            var_1542.push(param1.readInteger());
            var_1543.push(param1.readInteger());
            _loc3_++;
         }
         var_1616 = param1.readInteger();
         var_1617 = param1.readInteger();
         return true;
      }
   }
}
