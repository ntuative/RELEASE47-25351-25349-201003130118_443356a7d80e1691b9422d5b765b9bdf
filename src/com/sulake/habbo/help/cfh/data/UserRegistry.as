package com.sulake.habbo.help.cfh.data
{
   import com.sulake.core.utils.Map;
   
   public class UserRegistry
   {
      
      private static const const_1032:int = 80;
       
      
      private var var_446:Map;
      
      private var var_631:String = "";
      
      private var var_1119:Array;
      
      public function UserRegistry()
      {
         var_446 = new Map();
         var_1119 = new Array();
         super();
      }
      
      private function addRoomNameForMissing() : void
      {
         var _loc1_:* = null;
         while(false)
         {
            _loc1_ = var_446.getValue(var_1119.shift());
            if(_loc1_ != null)
            {
               _loc1_.roomName = var_631;
            }
         }
      }
      
      public function registerUser(param1:int, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:* = null;
         if(var_446.getValue(param1) != null)
         {
            var_446.remove(param1);
         }
         if(param3)
         {
            _loc4_ = new UserRegistryItem(param1,param2,var_631);
         }
         else
         {
            _loc4_ = new UserRegistryItem(param1,param2);
         }
         if(param3 && var_631 == "")
         {
            var_1119.push(param1);
         }
         var_446.add(param1,_loc4_);
         purgeUserIndex();
      }
      
      public function getRegistry() : Map
      {
         return var_446;
      }
      
      public function unregisterRoom() : void
      {
         var_631 = "";
      }
      
      private function purgeUserIndex() : void
      {
         var _loc1_:int = 0;
         while(var_446.length > const_1032)
         {
            _loc1_ = var_446.getKey(0);
            var_446.remove(_loc1_);
         }
      }
      
      public function registerRoom(param1:String) : void
      {
         var_631 = param1;
         if(var_631 != "")
         {
            addRoomNameForMissing();
         }
      }
   }
}
