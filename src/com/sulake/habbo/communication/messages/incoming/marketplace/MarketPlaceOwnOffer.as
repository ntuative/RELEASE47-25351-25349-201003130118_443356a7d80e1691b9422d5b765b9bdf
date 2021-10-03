package com.sulake.habbo.communication.messages.incoming.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOwnOffer
   {
      
      public static const const_1529:int = 2;
      
      public static const const_1518:int = 1;
      
      public static const const_1459:int = 0;
       
      
      private var var_1252:int;
      
      private var var_368:int;
      
      private var var_2376:int;
      
      private var _offerId:int;
      
      private var var_1976:int;
      
      private var var_1752:int;
      
      private var _image:BitmapData;
      
      public function MarketPlaceOwnOffer(param1:int, param2:int, param3:int, param4:int)
      {
         super();
         _offerId = param1;
         var_1752 = param2;
         var_1976 = param3;
         var_1252 = param4;
      }
      
      public function get furniId() : int
      {
         return var_1752;
      }
      
      public function get furniType() : int
      {
         return var_1976;
      }
      
      public function get price() : int
      {
         return var_1252;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
   }
}
