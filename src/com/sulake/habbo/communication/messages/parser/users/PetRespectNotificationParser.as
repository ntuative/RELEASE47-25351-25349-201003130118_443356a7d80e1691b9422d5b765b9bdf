package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.parser.inventory.pets.PetData;
   
   public class PetRespectNotificationParser implements IMessageParser
   {
       
      
      private var var_1630:int;
      
      private var var_1169:PetData;
      
      private var var_1863:int;
      
      public function PetRespectNotificationParser()
      {
         super();
      }
      
      public function get respect() : int
      {
         return var_1630;
      }
      
      public function get petData() : PetData
      {
         return var_1169;
      }
      
      public function flush() : Boolean
      {
         var_1169 = null;
         return true;
      }
      
      public function get petOwnerId() : int
      {
         return var_1863;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1630 = param1.readInteger();
         var_1863 = param1.readInteger();
         var_1169 = new PetData(param1);
         return true;
      }
   }
}
