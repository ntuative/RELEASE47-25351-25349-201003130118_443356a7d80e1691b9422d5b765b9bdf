package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["HabboCatalogCom_ctlg_bots"] = const_113;
         param1["bound_to_parent_rect"] = const_84;
         param1["child_window"] = const_851;
         param1["embedded_controller"] = const_287;
         param1["resize_to_accommodate_children"] = const_64;
         param1["input_event_processor"] = const_50;
         param1["internal_event_handling"] = const_683;
         param1["mouse_dragging_target"] = const_224;
         param1["mouse_dragging_trigger"] = const_309;
         param1["mouse_scaling_target"] = const_271;
         param1["mouse_scaling_trigger"] = const_396;
         param1["horizontal_mouse_scaling_trigger"] = const_225;
         param1["vertical_mouse_scaling_trigger"] = const_220;
         param1["observe_parent_input_events"] = const_862;
         param1["optimize_region_to_layout_size"] = const_420;
         param1["parent_window"] = const_960;
         param1["relative_horizontal_scale_center"] = const_177;
         param1["relative_horizontal_scale_fixed"] = const_110;
         param1["relative_horizontal_scale_move"] = const_335;
         param1["relative_horizontal_scale_strech"] = const_274;
         param1["relative_scale_center"] = const_962;
         param1["relative_scale_fixed"] = const_639;
         param1["relative_scale_move"] = const_941;
         param1["relative_scale_strech"] = const_1010;
         param1["relative_vertical_scale_center"] = const_167;
         param1["relative_vertical_scale_fixed"] = const_106;
         param1["relative_vertical_scale_move"] = const_300;
         param1["relative_vertical_scale_strech"] = const_240;
         param1["on_resize_align_left"] = const_531;
         param1["on_resize_align_right"] = const_385;
         param1["on_resize_align_center"] = const_388;
         param1["on_resize_align_top"] = const_704;
         param1["on_resize_align_bottom"] = const_398;
         param1["on_resize_align_middle"] = const_405;
         param1["on_accommodate_align_left"] = const_825;
         param1["on_accommodate_align_right"] = const_464;
         param1["on_accommodate_align_center"] = const_663;
         param1["on_accommodate_align_top"] = const_959;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_682;
         param1["route_input_events_to_parent"] = const_401;
         param1["use_parent_graphic_context"] = const_32;
         param1["draggable_with_mouse"] = const_877;
         param1["scalable_with_mouse"] = const_818;
         param1["reflect_horizontal_resize_to_parent"] = const_433;
         param1["reflect_vertical_resize_to_parent"] = WINDOW_PARAM_REFLECT_VERTICAL_RESIZE_TO_PARENT;
         param1["reflect_resize_to_parent"] = const_234;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  if(param1[_loc3_] != 0)
                  {
                     Logger.log("Conflictiong flags in window params: \"" + _loc3_ + "\"!");
                  }
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
