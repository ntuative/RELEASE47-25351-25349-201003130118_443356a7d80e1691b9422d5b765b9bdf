package com.sulake.core.window.graphics.renderer
{
   import flash.geom.Rectangle;
   
   public class SkinLayoutEntity implements ISkinLayoutEntity
   {
      
      public static const const_238:uint = 1;
      
      public static const const_479:uint = 0;
      
      public static const const_839:uint = 8;
      
      public static const const_251:uint = 4;
      
      public static const const_412:uint = 2;
       
      
      private var var_423:uint;
      
      private var var_2244:uint;
      
      private var _color:uint;
      
      private var _name:String;
      
      private var var_2243:uint;
      
      private var var_96:Rectangle;
      
      private var var_621:Array;
      
      private var _id:uint;
      
      public function SkinLayoutEntity(param1:uint, param2:String, param3:Rectangle, param4:uint = 4.294967295E9, param5:uint = 100, param6:uint = 0, param7:uint = 0)
      {
         super();
         _id = param1;
         _name = param2;
         var_96 = param3;
         _color = param4;
         var_423 = param5;
         var_2244 = param6;
         var_2243 = param7;
         var_621 = new Array();
      }
      
      public function get scaleH() : uint
      {
         return var_2244;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get blend() : uint
      {
         return var_423;
      }
      
      public function get scaleV() : uint
      {
         return var_2243;
      }
      
      public function get tags() : Array
      {
         return var_621;
      }
      
      public function get id() : uint
      {
         return _id;
      }
      
      public function dispose() : void
      {
         var_96 = null;
         var_621 = null;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get region() : Rectangle
      {
         return var_96;
      }
   }
}
