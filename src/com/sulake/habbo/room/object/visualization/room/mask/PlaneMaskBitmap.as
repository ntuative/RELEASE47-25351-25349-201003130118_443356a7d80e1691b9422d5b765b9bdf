package com.sulake.habbo.room.object.visualization.room.mask
{
   import com.sulake.room.object.visualization.utils.IGraphicAsset;
   
   public class PlaneMaskBitmap
   {
      
      public static const const_51:Number = -1;
      
      public static const MAX_NORMAL_COORDINATE_VALUE:Number = 1;
       
      
      private var _normalMaxX:Number = 1;
      
      private var var_1838:Number = -1;
      
      private var var_805:IGraphicAsset = null;
      
      private var var_1839:Number = 1;
      
      private var var_1837:Number = -1;
      
      public function PlaneMaskBitmap(param1:IGraphicAsset, param2:Number = -1, param3:Number = 1, param4:Number = -1, param5:Number = 1)
      {
         super();
         var_1838 = param2;
         _normalMaxX = param3;
         var_1837 = param4;
         var_1839 = param5;
         var_805 = param1;
      }
      
      public function get normalMaxY() : Number
      {
         return var_1839;
      }
      
      public function get normalMaxX() : Number
      {
         return _normalMaxX;
      }
      
      public function get normalMinX() : Number
      {
         return var_1838;
      }
      
      public function get normalMinY() : Number
      {
         return var_1837;
      }
      
      public function get asset() : IGraphicAsset
      {
         return var_805;
      }
      
      public function dispose() : void
      {
         var_805 = null;
      }
   }
}
