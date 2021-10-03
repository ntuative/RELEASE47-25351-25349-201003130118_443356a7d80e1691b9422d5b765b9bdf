package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_211:String = "e";
      
      public static const const_78:String = "i";
      
      public static const const_82:String = "s";
       
      
      private var var_948:String;
      
      private var var_1126:String;
      
      private var var_1123:int;
      
      private var var_1625:int;
      
      private var var_947:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         var_1126 = param1.readString();
         var_1625 = param1.readInteger();
         var_948 = param1.readString();
         var_947 = param1.readInteger();
         var_1123 = param1.readInteger();
      }
      
      public function get productCount() : int
      {
         return var_947;
      }
      
      public function get productType() : String
      {
         return var_1126;
      }
      
      public function get expiration() : int
      {
         return var_1123;
      }
      
      public function get furniClassId() : int
      {
         return var_1625;
      }
      
      public function get extraParam() : String
      {
         return var_948;
      }
   }
}
