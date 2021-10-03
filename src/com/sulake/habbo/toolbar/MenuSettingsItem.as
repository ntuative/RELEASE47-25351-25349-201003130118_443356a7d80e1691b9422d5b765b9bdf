package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_1758:Array;
      
      private var var_1760:String;
      
      private var var_1759:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         var_1760 = param1;
         var_1758 = param2;
         var_1759 = param3;
      }
      
      public function get menuId() : String
      {
         return var_1760;
      }
      
      public function get yieldList() : Array
      {
         return var_1758;
      }
      
      public function get lockToIcon() : Boolean
      {
         return var_1759;
      }
   }
}
