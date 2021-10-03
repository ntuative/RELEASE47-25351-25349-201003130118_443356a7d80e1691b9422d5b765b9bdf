package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_1980:int;
      
      private var var_1982:String;
      
      private var var_1815:int;
      
      private var _disposed:Boolean;
      
      private var var_1979:int;
      
      private var var_1981:String;
      
      private var var_1163:int;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         var_1981 = param1.readString();
         var_1980 = param1.readInteger();
         var_1815 = param1.readInteger();
         var_1982 = param1.readString();
         var_1979 = param1.readInteger();
         var_1163 = param1.readInteger();
      }
      
      public function get maxUsers() : int
      {
         return var_1979;
      }
      
      public function get worldId() : int
      {
         return var_1815;
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
      }
      
      public function get unitPropertySet() : String
      {
         return var_1981;
      }
      
      public function get unitPort() : int
      {
         return var_1980;
      }
      
      public function get castLibs() : String
      {
         return var_1982;
      }
      
      public function get nodeId() : int
      {
         return var_1163;
      }
   }
}
