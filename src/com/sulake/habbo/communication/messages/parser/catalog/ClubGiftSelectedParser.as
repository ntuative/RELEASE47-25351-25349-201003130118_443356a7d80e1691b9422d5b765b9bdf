package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   
   public class ClubGiftSelectedParser implements IMessageParser
   {
       
      
      private var var_803:Array;
      
      private var var_1180:String;
      
      public function ClubGiftSelectedParser()
      {
         super();
      }
      
      public function get products() : Array
      {
         return var_803;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_803 = new Array();
         var_1180 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_803.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         var_803 = [];
         return true;
      }
      
      public function get productCode() : String
      {
         return var_1180;
      }
   }
}
