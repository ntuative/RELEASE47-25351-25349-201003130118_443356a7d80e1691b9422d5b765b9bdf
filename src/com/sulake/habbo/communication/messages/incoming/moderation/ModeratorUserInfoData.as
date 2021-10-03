package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var var_2118:int;
      
      private var var_2117:int;
      
      private var var_2121:int;
      
      private var _userName:String;
      
      private var var_2119:int;
      
      private var var_2116:int;
      
      private var var_2120:int;
      
      private var _userId:int;
      
      private var var_653:Boolean;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         _userId = param1.readInteger();
         _userName = param1.readString();
         var_2116 = param1.readInteger();
         var_2119 = param1.readInteger();
         var_653 = param1.readBoolean();
         var_2121 = param1.readInteger();
         var_2117 = param1.readInteger();
         var_2118 = param1.readInteger();
         var_2120 = param1.readInteger();
      }
      
      public function get banCount() : int
      {
         return var_2120;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
      
      public function get online() : Boolean
      {
         return var_653;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return var_2119;
      }
      
      public function get abusiveCfhCount() : int
      {
         return var_2117;
      }
      
      public function get cautionCount() : int
      {
         return var_2118;
      }
      
      public function get cfhCount() : int
      {
         return var_2121;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return var_2116;
      }
      
      public function get userName() : String
      {
         return _userName;
      }
   }
}
