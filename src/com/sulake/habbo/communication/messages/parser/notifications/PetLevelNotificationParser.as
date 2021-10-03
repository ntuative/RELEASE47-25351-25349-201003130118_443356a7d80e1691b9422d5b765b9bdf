package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_541:String;
      
      private var var_1631:int;
      
      private var var_1801:String;
      
      private var var_958:int;
      
      private var var_1130:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return var_1130;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1130 = param1.readInteger();
         var_1801 = param1.readString();
         var_1631 = param1.readInteger();
         var_541 = param1.readString();
         var_958 = param1.readInteger();
         return true;
      }
      
      public function get petName() : String
      {
         return var_1801;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get figure() : String
      {
         return var_541;
      }
      
      public function get petType() : int
      {
         return var_958;
      }
      
      public function get level() : int
      {
         return var_1631;
      }
   }
}
