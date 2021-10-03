package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetCommandsMessageParser implements IMessageParser
   {
       
      
      private var var_1049:Array;
      
      private var var_1130:int;
      
      public function PetCommandsMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1130 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var_1049 = new Array();
         while(_loc2_-- > 0)
         {
            var_1049.push(param1.readInteger());
         }
         return true;
      }
      
      public function get enabledCommands() : Array
      {
         return var_1049;
      }
      
      public function get petId() : int
      {
         return var_1130;
      }
      
      public function flush() : Boolean
      {
         var_1130 = -1;
         var_1049 = null;
         return true;
      }
   }
}
