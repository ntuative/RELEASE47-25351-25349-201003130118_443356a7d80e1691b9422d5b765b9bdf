package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.moderation.OffenceCategoryData;
   
   public class ModeratorInitMessageParser implements IMessageParser
   {
       
      
      private var _roomMessageTemplates:Array;
      
      private var var_2124:Boolean;
      
      private var var_1544:Array;
      
      private var var_2125:Boolean;
      
      private var var_2128:Boolean;
      
      private var var_2122:Boolean;
      
      private var var_145:Array;
      
      private var var_2129:Boolean;
      
      private var var_2127:Boolean;
      
      private var var_1545:Array;
      
      private var var_2123:Boolean;
      
      private var var_2126:Boolean;
      
      public function ModeratorInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get banPermission() : Boolean
      {
         return var_2126;
      }
      
      public function get roomKickPermission() : Boolean
      {
         return var_2124;
      }
      
      public function get alertPermission() : Boolean
      {
         return var_2125;
      }
      
      public function get cfhPermission() : Boolean
      {
         return var_2129;
      }
      
      public function get roomMessageTemplates() : Array
      {
         return _roomMessageTemplates;
      }
      
      public function get roomAlertPermission() : Boolean
      {
         return var_2127;
      }
      
      public function get messageTemplates() : Array
      {
         return var_1544;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:IssueInfoMessageParser = new IssueInfoMessageParser();
         var_145 = [];
         var_1544 = [];
         _roomMessageTemplates = [];
         var_1545 = [];
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(!_loc2_.parse(param1))
            {
               return false;
            }
            var_145.push(_loc2_.issueData);
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1544.push(param1.readString());
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1545.push(new OffenceCategoryData(param1));
            _loc4_++;
         }
         var_2129 = param1.readBoolean();
         var_2122 = param1.readBoolean();
         var_2125 = param1.readBoolean();
         var_2128 = param1.readBoolean();
         var_2126 = param1.readBoolean();
         var_2127 = param1.readBoolean();
         var_2124 = param1.readBoolean();
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            _roomMessageTemplates.push(param1.readString());
            _loc4_++;
         }
         var_2123 = param1.readBoolean();
         return true;
      }
      
      public function get kickPermission() : Boolean
      {
         return var_2128;
      }
      
      public function get offenceCategories() : Array
      {
         return var_1545;
      }
      
      public function get issues() : Array
      {
         return var_145;
      }
      
      public function get bobbaFilterPermission() : Boolean
      {
         return var_2123;
      }
      
      public function get chatlogsPermission() : Boolean
      {
         return var_2122;
      }
   }
}
