package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var var_1986:int;
      
      private var var_1987:Boolean;
      
      private var _offerId:int;
      
      private var var_1816:Boolean;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1987 = param1.readBoolean();
         var_1986 = param1.readInteger();
         var_1816 = param1.readBoolean();
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1816;
      }
      
      public function get monthsRequired() : int
      {
         return var_1986;
      }
      
      public function get isVip() : Boolean
      {
         return var_1987;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
   }
}
