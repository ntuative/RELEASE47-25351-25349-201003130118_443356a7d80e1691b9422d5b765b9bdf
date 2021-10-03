package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1672:int;
      
      private var var_1678:String;
      
      private var var_1677:int;
      
      private var var_1674:int;
      
      private var var_700:Boolean;
      
      private var var_1679:Boolean;
      
      private var var_427:int;
      
      private var var_1205:String;
      
      private var var_1673:int;
      
      private var var_1235:int;
      
      private var _ownerName:String;
      
      private var var_631:String;
      
      private var var_1675:int;
      
      private var var_1676:RoomThumbnailData;
      
      private var var_1671:Boolean;
      
      private var var_621:Array;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         var_621 = new Array();
         super();
         var_427 = param1.readInteger();
         var_700 = param1.readBoolean();
         var_631 = param1.readString();
         _ownerName = param1.readString();
         var_1673 = param1.readInteger();
         var_1672 = param1.readInteger();
         var_1675 = param1.readInteger();
         var_1205 = param1.readString();
         var_1677 = param1.readInteger();
         var_1671 = param1.readBoolean();
         var_1674 = param1.readInteger();
         var_1235 = param1.readInteger();
         var_1678 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            var_621.push(_loc4_);
            _loc3_++;
         }
         var_1676 = new RoomThumbnailData(param1);
         var_1679 = param1.readBoolean();
      }
      
      public function get maxUserCount() : int
      {
         return var_1675;
      }
      
      public function get roomName() : String
      {
         return var_631;
      }
      
      public function get userCount() : int
      {
         return var_1672;
      }
      
      public function get score() : int
      {
         return var_1674;
      }
      
      public function get eventCreationTime() : String
      {
         return var_1678;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_1671;
      }
      
      public function get tags() : Array
      {
         return var_621;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1679;
      }
      
      public function get event() : Boolean
      {
         return var_700;
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
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get categoryId() : int
      {
         return var_1235;
      }
      
      public function get srchSpecPrm() : int
      {
         return var_1677;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return var_1676;
      }
      
      public function get doorMode() : int
      {
         return var_1673;
      }
      
      public function get flatId() : int
      {
         return var_427;
      }
      
      public function get description() : String
      {
         return var_1205;
      }
   }
}
