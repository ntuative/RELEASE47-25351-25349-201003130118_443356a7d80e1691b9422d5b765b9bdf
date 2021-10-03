package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1252:int;
      
      private var var_1974:int = -1;
      
      private var var_368:int;
      
      private var var_1618:int;
      
      private var var_1976:int;
      
      private var _offerId:int;
      
      private var var_1253:int;
      
      private var var_1752:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         _offerId = param1;
         var_1752 = param2;
         var_1976 = param3;
         var_1252 = param4;
         var_368 = param5;
         var_1974 = param6;
         var_1618 = param7;
         var_1253 = param8;
      }
      
      public function get status() : int
      {
         return var_368;
      }
      
      public function get price() : int
      {
         return var_1252;
      }
      
      public function get timeLeftMinutes() : int
      {
         return var_1974;
      }
      
      public function get offerCount() : int
      {
         return var_1253;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get furniType() : int
      {
         return var_1976;
      }
      
      public function get averagePrice() : int
      {
         return var_1618;
      }
      
      public function get furniId() : int
      {
         return var_1752;
      }
   }
}
