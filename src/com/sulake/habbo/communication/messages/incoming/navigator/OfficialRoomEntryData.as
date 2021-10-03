package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1346:int = 4;
      
      public static const const_551:int = 3;
      
      public static const const_550:int = 2;
      
      public static const const_859:int = 1;
       
      
      private var var_2038:String;
      
      private var _disposed:Boolean;
      
      private var var_1672:int;
      
      private var var_2035:Boolean;
      
      private var var_850:String;
      
      private var var_862:PublicRoomData;
      
      private var var_2039:int;
      
      private var _index:int;
      
      private var var_2036:String;
      
      private var _type:int;
      
      private var var_1605:String;
      
      private var var_863:GuestRoomData;
      
      private var var_2037:String;
      
      private var _open:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         _index = param1.readInteger();
         var_2038 = param1.readString();
         var_2037 = param1.readString();
         var_2035 = param1.readInteger() == 1;
         var_2036 = param1.readString();
         var_850 = param1.readString();
         var_2039 = param1.readInteger();
         var_1672 = param1.readInteger();
         _type = param1.readInteger();
         if(_type == const_859)
         {
            var_1605 = param1.readString();
         }
         else if(_type == const_551)
         {
            var_862 = new PublicRoomData(param1);
         }
         else if(_type == const_550)
         {
            var_863 = new GuestRoomData(param1);
         }
      }
      
      public function get folderId() : int
      {
         return var_2039;
      }
      
      public function get popupCaption() : String
      {
         return var_2038;
      }
      
      public function get userCount() : int
      {
         return var_1672;
      }
      
      public function get open() : Boolean
      {
         return _open;
      }
      
      public function get showDetails() : Boolean
      {
         return var_2035;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_859)
         {
            return 0;
         }
         if(this.type == const_550)
         {
            return this.var_863.maxUserCount;
         }
         if(this.type == const_551)
         {
            return this.var_862.maxUsers;
         }
         return 0;
      }
      
      public function get popupDesc() : String
      {
         return var_2037;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(this.var_863 != null)
         {
            this.var_863.dispose();
            this.var_863 = null;
         }
         if(this.var_862 != null)
         {
            this.var_862.dispose();
            this.var_862 = null;
         }
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return var_863;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get picText() : String
      {
         return var_2036;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return var_862;
      }
      
      public function get picRef() : String
      {
         return var_850;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tag() : String
      {
         return var_1605;
      }
      
      public function toggleOpen() : void
      {
         _open = !_open;
      }
   }
}
