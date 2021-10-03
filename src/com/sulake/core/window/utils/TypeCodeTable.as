package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_568;
         param1["bitmap"] = const_651;
         param1["border"] = const_729;
         param1["border_notify"] = const_1177;
         param1["button"] = const_438;
         param1["button_thick"] = const_648;
         param1["button_icon"] = const_1259;
         param1["button_group_left"] = const_594;
         param1["button_group_center"] = const_626;
         param1["button_group_right"] = const_653;
         param1["canvas"] = const_656;
         param1["checkbox"] = const_696;
         param1["closebutton"] = const_814;
         param1["container"] = const_284;
         param1["container_button"] = const_702;
         param1["display_object_wrapper"] = const_646;
         param1["dropmenu"] = const_471;
         param1["dropmenu_item"] = const_421;
         param1["frame"] = const_291;
         param1["frame_notify"] = const_1203;
         param1["header"] = const_680;
         param1["icon"] = const_988;
         param1["itemgrid"] = const_896;
         param1["itemgrid_horizontal"] = const_391;
         param1["itemgrid_vertical"] = const_666;
         param1["itemlist"] = const_939;
         param1["itemlist_horizontal"] = const_289;
         param1["itemlist_vertical"] = const_334;
         param1["maximizebox"] = const_1347;
         param1["menu"] = const_1269;
         param1["menu_item"] = WINDOW_TYPE_MENU_ITEM;
         param1["submenu"] = const_852;
         param1["minimizebox"] = const_1276;
         param1["notify"] = const_1275;
         param1["HabboCatalogCom_ctlg_bots"] = const_636;
         param1["password"] = const_736;
         param1["radiobutton"] = const_613;
         param1["region"] = const_467;
         param1["restorebox"] = const_1261;
         param1["scaler"] = const_949;
         param1["scaler_horizontal"] = const_1361;
         param1["scaler_vertical"] = const_1263;
         param1["scrollbar_horizontal"] = const_445;
         param1["scrollbar_vertical"] = const_581;
         param1["scrollbar_slider_button_up"] = const_946;
         param1["scrollbar_slider_button_down"] = const_1000;
         param1["scrollbar_slider_button_left"] = const_894;
         param1["scrollbar_slider_button_right"] = const_953;
         param1["scrollbar_slider_bar_horizontal"] = const_966;
         param1["scrollbar_slider_bar_vertical"] = const_948;
         param1["scrollbar_slider_track_horizontal"] = const_835;
         param1["scrollbar_slider_track_vertical"] = const_793;
         param1["scrollable_itemlist"] = const_1312;
         param1["scrollable_itemlist_vertical"] = const_366;
         param1["scrollable_itemlist_horizontal"] = const_933;
         param1["selector"] = const_715;
         param1["selector_list"] = const_574;
         param1["submenu"] = const_852;
         param1["tab_button"] = const_523;
         param1["tab_container_button"] = const_796;
         param1["tab_context"] = const_382;
         param1["tab_content"] = const_965;
         param1["tab_selector"] = WINDOW_TYPE_TAB_SELECTOR;
         param1["text"] = const_637;
         param1["input"] = const_552;
         param1["toolbar"] = const_1323;
         param1["tooltip"] = const_329;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
