package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1640:String;
      
      private var var_427:int;
      
      private var var_1638:String;
      
      private var var_1641:String;
      
      private var var_1642:int;
      
      private var var_1637:String;
      
      private var var_1639:int;
      
      private var var_621:Array;
      
      private var var_987:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         var_621 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_987 = false;
            return;
         }
         this.var_987 = true;
         var_1642 = int(_loc2_);
         var_1638 = param1.readString();
         var_427 = int(param1.readString());
         var_1639 = param1.readInteger();
         var_1640 = param1.readString();
         var_1641 = param1.readString();
         var_1637 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            var_621.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function get eventType() : int
      {
         return var_1639;
      }
      
      public function get eventName() : String
      {
         return var_1640;
      }
      
      public function get eventDescription() : String
      {
         return var_1641;
      }
      
      public function get ownerAvatarName() : String
      {
         return var_1638;
      }
      
      public function get tags() : Array
      {
         return var_621;
      }
      
      public function get creationTime() : String
      {
         return var_1637;
      }
      
      public function get exists() : Boolean
      {
         return var_987;
      }
      
      public function get ownerAvatarId() : int
      {
         return var_1642;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         this.var_621 = null;
      }
      
      public function get flatId() : int
      {
         return var_427;
      }
   }
}
