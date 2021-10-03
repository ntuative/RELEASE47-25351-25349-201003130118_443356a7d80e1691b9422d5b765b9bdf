package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_350:Number = 0.5;
      
      private static const const_783:int = 3;
      
      private static const const_1123:Number = 1;
       
      
      private var var_2165:Boolean = false;
      
      private var var_2160:Boolean = false;
      
      private var var_1072:int = 0;
      
      private var var_279:Vector3d = null;
      
      private var var_2167:int = 0;
      
      private var var_2162:int = 0;
      
      private var var_2164:Boolean = false;
      
      private var var_2166:int = -2;
      
      private var var_2161:Boolean = false;
      
      private var var_2163:int = 0;
      
      private var var_2169:int = -1;
      
      private var var_426:Vector3d = null;
      
      private var var_2168:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get roomWd() : int
      {
         return var_2167;
      }
      
      public function get targetId() : int
      {
         return var_2169;
      }
      
      public function set roomHt(param1:int) : void
      {
         var_2163 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         var_2167 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         var_2165 = param1;
      }
      
      public function set targetId(param1:int) : void
      {
         var_2169 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         var_2160 = param1;
      }
      
      public function dispose() : void
      {
         var_426 = null;
         var_279 = null;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(var_426 == null)
         {
            var_426 = new Vector3d();
         }
         var_426.assign(param1);
         var_1072 = 0;
      }
      
      public function get targetCategory() : int
      {
         return var_2166;
      }
      
      public function get screenHt() : int
      {
         return var_2168;
      }
      
      public function set screenWd(param1:int) : void
      {
         var_2162 = param1;
      }
      
      public function get location() : IVector3d
      {
         return var_279;
      }
      
      public function set screenHt(param1:int) : void
      {
         var_2168 = param1;
      }
      
      public function get roomHt() : int
      {
         return var_2163;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return var_2165;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return var_2160;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(var_426 != null && var_279 != null)
         {
            ++var_1072;
            _loc2_ = Vector3d.dif(var_426,var_279);
            if(_loc2_.length <= const_350)
            {
               var_279 = var_426;
               var_426 = null;
            }
            else
            {
               _loc2_.div(_loc2_.length);
               if(_loc2_.length < const_350 * (const_783 + 1))
               {
                  _loc2_.mul(const_350);
               }
               else if(var_1072 <= const_783)
               {
                  _loc2_.mul(const_350);
               }
               else
               {
                  _loc2_.mul(const_1123);
               }
               var_279 = Vector3d.sum(var_279,_loc2_);
            }
         }
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         var_2164 = param1;
      }
      
      public function get screenWd() : int
      {
         return var_2162;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         var_2161 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         var_2166 = param1;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(var_279 != null)
         {
            return;
         }
         var_279 = new Vector3d();
         var_279.assign(param1);
      }
      
      public function get centeredLocX() : Boolean
      {
         return var_2164;
      }
      
      public function get centeredLocY() : Boolean
      {
         return var_2161;
      }
   }
}
