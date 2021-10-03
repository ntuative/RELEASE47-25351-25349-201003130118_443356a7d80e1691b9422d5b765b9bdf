package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_422:int = 255;
      
      public static const INK_DARKEN:int = 3;
      
      public static const const_440:int = 0;
      
      public static const const_880:int = 2;
      
      public static const const_910:int = 1;
      
      public static const const_627:Boolean = false;
      
      public static const const_621:String = "";
      
      public static const const_450:int = 0;
      
      public static const const_427:int = 0;
      
      public static const const_476:int = 0;
       
      
      private var var_2026:int = 0;
      
      private var var_1605:String = "";
      
      private var var_1529:int = 0;
      
      private var var_2028:int = 0;
      
      private var var_2025:Number = 0;
      
      private var var_1819:int = 255;
      
      private var var_2027:Boolean = false;
      
      public function LayerData()
      {
         super();
      }
      
      public function get yOffset() : int
      {
         return var_2026;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            tag = param1.tag;
            ink = param1.ink;
            alpha = param1.alpha;
            ignoreMouse = param1.ignoreMouse;
            xOffset = param1.xOffset;
            yOffset = param1.yOffset;
            zOffset = param1.zOffset;
         }
      }
      
      public function set ink(param1:int) : void
      {
         var_1529 = param1;
      }
      
      public function get zOffset() : Number
      {
         return var_2025;
      }
      
      public function set xOffset(param1:int) : void
      {
         var_2028 = param1;
      }
      
      public function set yOffset(param1:int) : void
      {
         var_2026 = param1;
      }
      
      public function get tag() : String
      {
         return var_1605;
      }
      
      public function get alpha() : int
      {
         return var_1819;
      }
      
      public function get ink() : int
      {
         return var_1529;
      }
      
      public function set zOffset(param1:Number) : void
      {
         var_2025 = param1;
      }
      
      public function get xOffset() : int
      {
         return var_2028;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         var_2027 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return var_2027;
      }
      
      public function set tag(param1:String) : void
      {
         var_1605 = param1;
      }
      
      public function set alpha(param1:int) : void
      {
         var_1819 = param1;
      }
   }
}
