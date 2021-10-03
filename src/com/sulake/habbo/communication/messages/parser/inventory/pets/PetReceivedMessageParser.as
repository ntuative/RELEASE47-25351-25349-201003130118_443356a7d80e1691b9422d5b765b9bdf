package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetReceivedMessageParser implements IMessageParser
   {
       
      
      private var var_1001:PetData;
      
      private var var_1465:Boolean;
      
      public function PetReceivedMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1465 = param1.readBoolean();
         var_1001 = new PetData(param1);
         Logger.log("Got PetReceived: " + var_1465 + ", " + var_1001.id + ", " + var_1001.name + ", " + pet.figure + ", " + var_1001.type);
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get boughtAsGift() : Boolean
      {
         return var_1465;
      }
      
      public function get pet() : PetData
      {
         return var_1001;
      }
   }
}
