package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ObjectMessageData
   {
       
      
      private var var_1025:int = 0;
      
      private var _data:String = "";
      
      private var var_1439:int = -1;
      
      private var var_35:int = 0;
      
      private var _type:int = 0;
      
      private var var_1024:int = 0;
      
      private var var_2370:String = "";
      
      private var var_1856:int = 0;
      
      private var _id:int = 0;
      
      private var var_205:Boolean = false;
      
      private var var_239:int = 0;
      
      private var var_1857:String = null;
      
      private var var_83:Number = 0;
      
      private var _y:Number = 0;
      
      private var var_82:Number = 0;
      
      public function ObjectMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_205)
         {
            _type = param1;
         }
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_205)
         {
            _y = param1;
         }
      }
      
      public function get dir() : int
      {
         return var_239;
      }
      
      public function get extra() : int
      {
         return var_1439;
      }
      
      public function get state() : int
      {
         return var_35;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_205)
         {
            var_239 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_205)
         {
            var_83 = param1;
         }
      }
      
      public function set extra(param1:int) : void
      {
         if(!var_205)
         {
            var_1439 = param1;
         }
      }
      
      public function get z() : Number
      {
         return var_82;
      }
      
      public function set state(param1:int) : void
      {
         if(!var_205)
         {
            var_35 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function get expiryTime() : int
      {
         return var_1856;
      }
      
      public function get staticClass() : String
      {
         return var_1857;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function set expiryTime(param1:int) : void
      {
         if(!var_205)
         {
            var_1856 = param1;
         }
      }
      
      public function set data(param1:String) : void
      {
         if(!var_205)
         {
            _data = param1;
         }
      }
      
      public function set staticClass(param1:String) : void
      {
         if(!var_205)
         {
            var_1857 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_205 = true;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!var_205)
         {
            var_1025 = param1;
         }
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!var_205)
         {
            var_1024 = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_205)
         {
            var_82 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return var_1025;
      }
      
      public function get x() : Number
      {
         return var_83;
      }
      
      public function get sizeY() : int
      {
         return var_1024;
      }
   }
}
