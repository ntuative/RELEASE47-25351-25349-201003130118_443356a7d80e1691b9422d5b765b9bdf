package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var var_541:String;
      
      private var var_1357:String;
      
      private var var_1358:String;
      
      private var var_1235:int;
      
      private var var_1047:int;
      
      private var var_1356:String;
      
      private var _name:String;
      
      private var var_1162:Boolean;
      
      private var var_653:Boolean;
      
      private var _id:int;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_1047 = param1.readInteger();
         this.var_653 = param1.readBoolean();
         this.var_1162 = param1.readBoolean();
         this.var_541 = param1.readString();
         this.var_1235 = param1.readInteger();
         this.var_1358 = param1.readString();
         this.var_1357 = param1.readString();
         this.var_1356 = param1.readString();
      }
      
      public function get gender() : int
      {
         return var_1047;
      }
      
      public function get realName() : String
      {
         return var_1356;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get motto() : String
      {
         return var_1358;
      }
      
      public function get categoryId() : int
      {
         return var_1235;
      }
      
      public function get online() : Boolean
      {
         return var_653;
      }
      
      public function get followingAllowed() : Boolean
      {
         return var_1162;
      }
      
      public function get lastAccess() : String
      {
         return var_1357;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get figure() : String
      {
         return var_541;
      }
   }
}
