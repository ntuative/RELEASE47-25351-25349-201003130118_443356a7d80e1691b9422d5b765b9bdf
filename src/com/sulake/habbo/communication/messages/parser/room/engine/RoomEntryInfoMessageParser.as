package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_2189:int;
      
      private var var_428:Boolean;
      
      private var var_2188:Boolean;
      
      private var var_913:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2188 = param1.readBoolean();
         if(var_2188)
         {
            var_2189 = param1.readInteger();
            var_428 = param1.readBoolean();
         }
         else
         {
            var_913 = new PublicRoomShortData(param1);
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         if(var_913 != null)
         {
            var_913.dispose();
            var_913 = null;
         }
         return true;
      }
      
      public function get guestRoomId() : int
      {
         return var_2189;
      }
      
      public function get owner() : Boolean
      {
         return var_428;
      }
      
      public function get guestRoom() : Boolean
      {
         return var_2188;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return var_913;
      }
   }
}
