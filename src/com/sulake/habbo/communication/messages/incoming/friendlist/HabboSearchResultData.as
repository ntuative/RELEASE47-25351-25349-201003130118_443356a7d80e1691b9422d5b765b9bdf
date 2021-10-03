package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2322:Boolean;
      
      private var var_2320:int;
      
      private var var_2321:Boolean;
      
      private var var_1437:String;
      
      private var var_1356:String;
      
      private var var_1920:int;
      
      private var var_1771:String;
      
      private var var_2319:String;
      
      private var var_1770:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1920 = param1.readInteger();
         this.var_1437 = param1.readString();
         this.var_1771 = param1.readString();
         this.var_2322 = param1.readBoolean();
         this.var_2321 = param1.readBoolean();
         param1.readString();
         this.var_2320 = param1.readInteger();
         this.var_1770 = param1.readString();
         this.var_2319 = param1.readString();
         this.var_1356 = param1.readString();
      }
      
      public function get realName() : String
      {
         return this.var_1356;
      }
      
      public function get avatarName() : String
      {
         return this.var_1437;
      }
      
      public function get avatarId() : int
      {
         return this.var_1920;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2322;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2319;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_1770;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2321;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_1771;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2320;
      }
   }
}
