package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var var_541:String;
      
      private var var_2312:String;
      
      private var var_2316:int;
      
      private var var_2314:int;
      
      private var var_1215:String;
      
      private var var_1356:String;
      
      private var _name:String;
      
      private var var_496:int;
      
      private var var_864:int;
      
      private var var_2315:int;
      
      private var var_1927:int;
      
      private var var_2313:String;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function get directMail() : int
      {
         return this.var_2314;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get realName() : String
      {
         return this.var_1356;
      }
      
      public function get customData() : String
      {
         return this.var_2312;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_496;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2316;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2313;
      }
      
      public function get figure() : String
      {
         return this.var_541;
      }
      
      public function get respectTotal() : int
      {
         return this.var_1927;
      }
      
      public function get sex() : String
      {
         return this.var_1215;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_541 = param1.readString();
         this.var_1215 = param1.readString();
         this.var_2312 = param1.readString();
         this.var_1356 = param1.readString();
         this.var_2315 = param1.readInteger();
         this.var_2313 = param1.readString();
         this.var_2316 = param1.readInteger();
         this.var_2314 = param1.readInteger();
         this.var_1927 = param1.readInteger();
         this.var_864 = param1.readInteger();
         this.var_496 = param1.readInteger();
         return true;
      }
      
      public function get tickets() : int
      {
         return this.var_2315;
      }
      
      public function get respectLeft() : int
      {
         return this.var_864;
      }
   }
}
