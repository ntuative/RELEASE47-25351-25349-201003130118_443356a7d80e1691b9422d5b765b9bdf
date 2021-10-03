package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_107:RoomData;
      
      private var _disposed:Boolean;
      
      private var var_1672:int;
      
      private var var_427:int;
      
      private var var_700:RoomData;
      
      private var var_1629:int;
      
      private var _ownerName:String;
      
      private var var_2132:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         var_427 = param1.readInteger();
         var_1672 = param1.readInteger();
         var_2132 = param1.readBoolean();
         var_1629 = param1.readInteger();
         _ownerName = param1.readString();
         var_107 = new RoomData(param1);
         var_700 = new RoomData(param1);
      }
      
      public function get userCount() : int
      {
         return var_1672;
      }
      
      public function get event() : RoomData
      {
         return var_700;
      }
      
      public function get room() : RoomData
      {
         return var_107;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_107 != null)
         {
            var_107.dispose();
            var_107 = null;
         }
         if(var_700 != null)
         {
            var_700.dispose();
            var_700 = null;
         }
      }
      
      public function get flatId() : int
      {
         return var_427;
      }
      
      public function get ownerId() : int
      {
         return var_1629;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return var_2132;
      }
   }
}
