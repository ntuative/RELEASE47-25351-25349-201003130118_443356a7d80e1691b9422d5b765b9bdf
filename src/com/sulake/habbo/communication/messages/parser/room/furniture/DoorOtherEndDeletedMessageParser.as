package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class DoorOtherEndDeletedMessageParser implements IMessageParser
   {
       
      
      private var var_151:int;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      public function DoorOtherEndDeletedMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         _roomId = 0;
         _roomCategory = 0;
         var_151 = -1;
         return true;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get objectId() : int
      {
         return var_151;
      }
   }
}
