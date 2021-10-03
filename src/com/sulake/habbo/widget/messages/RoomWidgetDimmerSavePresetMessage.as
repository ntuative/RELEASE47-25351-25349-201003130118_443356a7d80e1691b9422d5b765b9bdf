package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_732:String = "RWSDPM_SAVE_PRESET";
       
      
      private var _color:uint;
      
      private var var_1968:int;
      
      private var var_1967:int;
      
      private var var_1966:Boolean;
      
      private var var_1088:int;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_732);
         var_1967 = param1;
         var_1968 = param2;
         _color = param3;
         var_1088 = param4;
         var_1966 = param5;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectTypeId() : int
      {
         return var_1968;
      }
      
      public function get presetNumber() : int
      {
         return var_1967;
      }
      
      public function get brightness() : int
      {
         return var_1088;
      }
      
      public function get apply() : Boolean
      {
         return var_1966;
      }
   }
}
