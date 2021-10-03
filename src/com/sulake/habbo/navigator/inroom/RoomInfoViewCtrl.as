package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var var_676:IWindowContainer;
      
      private var var_1012:ITextWindow;
      
      private var var_192:RoomSettingsCtrl;
      
      private var var_1223:IContainerButtonWindow;
      
      private var _window:IWindowContainer;
      
      private var _hideInfoTimer:Timer;
      
      private var var_1222:ITextWindow;
      
      private var var_345:IWindowContainer;
      
      private var var_1884:IWindowContainer;
      
      private var var_1883:ITextWindow;
      
      private var var_825:IWindowContainer;
      
      private var var_1474:IButtonWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_631:ITextWindow;
      
      private var var_1477:IWindowContainer;
      
      private var var_1221:IWindowContainer;
      
      private var var_823:ITextWindow;
      
      private var var_1014:ITextFieldWindow;
      
      private var var_306:IWindowContainer;
      
      private var var_822:ITextWindow;
      
      private var var_1476:IButtonWindow;
      
      private var var_1013:ITextWindow;
      
      private var var_2308:int;
      
      private var var_1218:IContainerButtonWindow;
      
      private var var_824:IWindowContainer;
      
      private var var_1220:ITextWindow;
      
      private var var_1224:IContainerButtonWindow;
      
      private var var_1475:ITextWindow;
      
      private var var_1473:IButtonWindow;
      
      private var var_842:TagRenderer;
      
      private var var_1640:ITextWindow;
      
      private var var_346:RoomEventViewCtrl;
      
      private var _navigator:HabboNavigator;
      
      private var var_675:ITextWindow;
      
      private var var_259:RoomThumbnailCtrl;
      
      private var var_1219:IContainerButtonWindow;
      
      private var var_1882:IWindowContainer;
      
      private var var_258:IWindowContainer;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_346 = new RoomEventViewCtrl(_navigator);
         var_192 = new RoomSettingsCtrl(_navigator,this,true);
         var_259 = new RoomThumbnailCtrl(_navigator);
         var_842 = new TagRenderer(_navigator);
         _navigator.roomSettingsCtrls.push(this.var_192);
         _hideInfoTimer = new Timer(6000,1);
         _hideInfoTimer.addEventListener(TimerEvent.TIMER,hideInfo);
      }
      
      public function backToRoomSettings() : void
      {
         this.var_192.active = true;
         this.var_346.active = false;
         this.var_259.active = false;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(false)
         {
            return;
         }
         var_1474.visible = param1 == null && _navigator.data.currentRoomOwner;
         var_1473.visible = param1 != null && (_navigator.data.currentRoomOwner || _navigator.data.eventMod);
         var_1477.visible = Util.hasVisibleChildren(var_1477);
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_631.text = param1.roomName;
         var_631.height = NaN;
         _ownerName.text = param1.ownerName;
         var_823.text = param1.description;
         var_842.refreshTags(var_345,param1.tags);
         var_823.visible = false;
         if(param1.description != "")
         {
            var_823.height = NaN;
            var_823.visible = true;
         }
         var _loc3_:* = _navigator.data.currentRoomRating == -1;
         _navigator.refreshButton(var_345,"thumb_up",_loc3_,onThumbUp,0);
         _navigator.refreshButton(var_345,"thumb_down",_loc3_,onThumbDown,0);
         var_1883.visible = _loc3_;
         var_822.visible = !_loc3_;
         var_1475.visible = !_loc3_;
         var_1475.text = "" + _navigator.data.currentRoomRating;
         _navigator.refreshButton(var_345,"home",param2,null,0);
         _navigator.refreshButton(var_345,"favourite",!param2 && _navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(var_345,["room_name","owner_name_cont","tags","room_desc","rating_cont"],var_631.y,0);
         var_345.visible = true;
         var_345.height = Util.getLowestPoint(var_345);
      }
      
      private function getButtonsMinHeight() : int
      {
         return !!_navigator.data.currentRoomOwner ? 0 : 21;
      }
      
      public function dispose() : void
      {
         if(_hideInfoTimer)
         {
            _hideInfoTimer.removeEventListener(TimerEvent.TIMER,hideInfo);
            _hideInfoTimer.reset();
            _hideInfoTimer = null;
         }
      }
      
      private function onThumbUp(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function hideInfo(param1:Event) : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_380,HabboToolbarIconEnum.ROOMINFO,_window,false));
      }
      
      private function getRoomInfoMinHeight() : int
      {
         return 37;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(_navigator.data.isFavouritesFull())
         {
            _loc3_ = new SimpleAlertView(_navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc3_.show();
         }
         else
         {
            _navigator.send(new AddFavouriteRoomMessageComposer(_navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(_navigator.data.enteredGuestRoom == null || false || false)
         {
            return;
         }
         var_1476.visible = _navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = _navigator.data.isCurrentRoomFavourite();
         var_1223.visible = _navigator.data.canAddFavourite && !_loc2_;
         var_1219.visible = _navigator.data.canAddFavourite && _loc2_;
         var_1218.visible = _navigator.data.canEditRoomSettings && !param1;
         var_1224.visible = _navigator.data.canEditRoomSettings && param1;
         var_1221.visible = Util.hasVisibleChildren(var_1221);
      }
      
      public function open(param1:Boolean) : void
      {
         this._hideInfoTimer.reset();
         this.var_346.active = false;
         this.var_192.active = false;
         this.var_259.active = false;
         if(param1)
         {
            this.startRoomSettingsEdit(_navigator.data.enteredGuestRoom.flatId);
         }
         refresh();
         _window.visible = true;
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_46,HabboToolbarIconEnum.ROOMINFO,_window,false));
         _window.parent.activate();
         _window.activate();
         if(!param1)
         {
            this._hideInfoTimer.start();
         }
      }
      
      public function toggle() : void
      {
         this._hideInfoTimer.reset();
         this.var_346.active = false;
         this.var_192.active = false;
         this.var_259.active = false;
         refresh();
         if(true)
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_46,HabboToolbarIconEnum.ROOMINFO,_window,false));
            _window.parent.activate();
         }
         else
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_380,HabboToolbarIconEnum.ROOMINFO,_window,false));
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(var_306);
         var_306.findChildByName("close").visible = true;
         var _loc1_:GuestRoomData = _navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _navigator.data.settings != null && _loc1_ != null && _loc1_.flatId == _navigator.data.settings.homeRoomId;
         refreshRoomDetails(_loc1_,_loc2_);
         refreshPublicSpaceDetails(_navigator.data.enteredPublicSpace);
         refreshRoomButtons(_loc2_);
         this.var_192.refresh(var_306);
         this.var_259.refresh(var_306);
         Util.moveChildrenToColumn(var_306,["room_details","room_buttons"],0,2);
         var_306.height = Util.getLowestPoint(var_306);
         var_306.visible = true;
         Logger.log("XORP: undefined, undefined, undefined, undefined, undefined");
      }
      
      private function onCloseButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         hideInfo(null);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var_1014.setSelection(0,var_1014.text.length);
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(_navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + _navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + _navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = _navigator.configuration.getKey("user.hash","");
         _navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         _navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         _navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return _navigator.getText("navigator.embed.src");
      }
      
      private function onThumbDown(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(-1));
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(var_258);
         var _loc1_:RoomEventData = _navigator.data.roomEventData;
         refreshEventDetails(_loc1_);
         refreshEventButtons(_loc1_);
         this.var_346.refresh(var_258);
         if(Util.hasVisibleChildren(var_258) && !this.var_259.active)
         {
            Util.moveChildrenToColumn(var_258,["event_details","event_buttons"],0,2);
            var_258.height = Util.getLowestPoint(var_258);
            var_258.visible = true;
         }
         else
         {
            var_258.visible = false;
         }
         Logger.log("EVENT: undefined, undefined");
      }
      
      public function startEventEdit() : void
      {
         this._hideInfoTimer.reset();
         this.var_346.active = true;
         this.var_192.active = false;
         this.var_259.active = false;
         this.reload();
      }
      
      private function getEventInfoMinHeight() : int
      {
         return 18;
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         _navigator.send(new DeleteFavouriteRoomMessageComposer(_navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onHover(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            return;
         }
         _hideInfoTimer.reset();
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_1012.text = _navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         var_1012.height = NaN;
         var_1222.text = _navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         var_1222.height = NaN;
         Util.moveChildrenToColumn(var_676,["public_space_name","public_space_desc"],var_1012.y,0);
         var_676.visible = true;
         var_676.height = Math.max(86,Util.getLowestPoint(var_676));
      }
      
      public function reload() : void
      {
         if(_window != null && false)
         {
            refresh();
         }
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = _window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = _navigator.configuration.getKey("embed.showInRoomInfo","false") == "true";
         if(_loc1_ && true && true && true)
         {
            var_824.visible = true;
            var_1014.text = this.getEmbedData();
         }
         else
         {
            var_824.visible = false;
         }
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this._hideInfoTimer.reset();
         this.var_192.load(param1);
         this.var_192.active = true;
         this.var_346.active = false;
         this.var_259.active = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this._hideInfoTimer.reset();
         this.var_192.active = false;
         this.var_346.active = false;
         this.var_259.active = true;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      private function prepareWindow() : void
      {
         if(_window != null)
         {
            return;
         }
         _window = IWindowContainer(_navigator.getXmlWindow("iro_room_details"));
         _window.setParamFlag(HabboWindowParam.const_68,false);
         _window.setParamFlag(HabboWindowParam.const_1272,true);
         _window.visible = false;
         var_306 = IWindowContainer(find("room_info"));
         var_345 = IWindowContainer(find("room_details"));
         var_676 = IWindowContainer(find("public_space_details"));
         var_1882 = IWindowContainer(find("owner_name_cont"));
         var_1884 = IWindowContainer(find("rating_cont"));
         var_1221 = IWindowContainer(find("room_buttons"));
         var_631 = ITextWindow(find("room_name"));
         var_1012 = ITextWindow(find("public_space_name"));
         _ownerName = ITextWindow(find("owner_name"));
         var_823 = ITextWindow(find("room_desc"));
         var_1222 = ITextWindow(find("public_space_desc"));
         var_1013 = ITextWindow(find("owner_caption"));
         var_822 = ITextWindow(find("rating_caption"));
         var_1883 = ITextWindow(find("rate_caption"));
         var_1475 = ITextWindow(find("rating_txt"));
         var_258 = IWindowContainer(find("event_info"));
         var_825 = IWindowContainer(find("event_details"));
         var_1477 = IWindowContainer(find("event_buttons"));
         var_1640 = ITextWindow(find("event_name"));
         var_675 = ITextWindow(find("event_desc"));
         var_1223 = IContainerButtonWindow(find("add_favourite_button"));
         var_1219 = IContainerButtonWindow(find("rem_favourite_button"));
         var_1218 = IContainerButtonWindow(find("make_home_button"));
         var_1224 = IContainerButtonWindow(find("unmake_home_button"));
         var_1476 = IButtonWindow(find("room_settings_button"));
         var_1474 = IButtonWindow(find("create_event_button"));
         var_1473 = IButtonWindow(find("edit_event_button"));
         var_824 = IWindowContainer(find("embed_info"));
         var_1220 = ITextWindow(find("embed_info_txt"));
         var_1014 = ITextFieldWindow(find("embed_src_txt"));
         Util.setProcDirectly(var_1223,onAddFavouriteClick);
         Util.setProcDirectly(var_1219,onRemoveFavouriteClick);
         Util.setProcDirectly(var_1476,onRoomSettingsClick);
         Util.setProcDirectly(var_1218,onMakeHomeClick);
         Util.setProcDirectly(var_1224,onUnmakeHomeClick);
         Util.setProcDirectly(var_1474,onEventSettingsClick);
         Util.setProcDirectly(var_1473,onEventSettingsClick);
         Util.setProcDirectly(var_1014,onEmbedSrcClick);
         _navigator.refreshButton(var_1223,"favourite",true,null,0);
         _navigator.refreshButton(var_1219,"favourite",true,null,0);
         _navigator.refreshButton(var_1218,"home",true,null,0);
         _navigator.refreshButton(var_1224,"home",true,null,0);
         _window.findChildByName("close").procedure = onCloseButtonClick;
         Util.setProcDirectly(var_306,onHover);
         Util.setProcDirectly(var_258,onHover);
         var_1013.width = var_1013.textWidth;
         Util.moveChildrenToRow(var_1882,["owner_caption","owner_name"],var_1013.x,var_1013.y,3);
         var_822.width = var_822.textWidth;
         Util.moveChildrenToRow(var_1884,["rating_caption","rating_txt"],var_822.x,var_822.y,3);
         var_1220.height = NaN;
         Util.moveChildrenToColumn(var_824,["embed_info_txt","embed_src_txt"],var_1220.y,2);
         var_824.height = Util.getLowestPoint(var_824) + 5;
         var_2308 = NaN;
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || false)
         {
            return;
         }
         var_1640.text = param1.eventName;
         var_675.text = param1.eventDescription;
         var_842.refreshTags(var_825,[_navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         var_675.visible = false;
         if(param1.eventDescription != "")
         {
            var_675.height = NaN;
            var_675.y = Util.getLowestPoint(var_825) + 2;
            var_675.visible = true;
         }
         var_825.visible = true;
         var_825.height = Util.getLowestPoint(var_825);
      }
      
      private function refresh() : void
      {
         prepareWindow();
         refreshRoom();
         refreshEvent();
         refreshEmbed();
         Util.moveChildrenToColumn(this._window,["room_info","event_info","embed_info"],0,2);
         _window.height = Util.getLowestPoint(_window);
         _window.y = _window.desktop.height - 0 - 5;
         Logger.log("MAIN: undefined, undefined, undefined");
      }
      
      private function onRoomSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         startRoomSettingsEdit(_loc3_.flatId);
      }
      
      private function onUnmakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("CLEARING HOME ROOM:");
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(0));
      }
      
      private function onEventSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.roomEventData == null)
         {
            if(_navigator.data.currentRoomOwner)
            {
               _navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            startEventEdit();
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         refresh();
      }
      
      public function close() : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_799,HabboToolbarIconEnum.ROOMINFO,_window,false));
         if(_window == null)
         {
            return;
         }
         this._window.visible = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      private function onMakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc3_.flatId);
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc3_.flatId));
      }
   }
}
