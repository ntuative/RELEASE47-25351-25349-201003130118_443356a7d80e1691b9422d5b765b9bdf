package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.navigator.NavigatorSettingsMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1413:int = 10;
       
      
      private var var_1486:NavigatorSettingsMessageParser;
      
      private var var_1233:int;
      
      private var var_1919:int;
      
      private var var_1921:Boolean;
      
      private var var_1018:Array;
      
      private var var_829:Dictionary;
      
      private var var_1019:Array;
      
      private var var_2309:int;
      
      private var var_1915:int;
      
      private var var_1920:int;
      
      private var var_1918:int;
      
      private var var_577:PublicRoomShortData;
      
      private var var_411:RoomEventData;
      
      private var var_129:MsgWithRequestId;
      
      private var var_1917:Boolean;
      
      private var _navigator:HabboNavigator;
      
      private var var_1916:Boolean;
      
      private var var_193:GuestRoomData;
      
      private var var_683:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         var_1018 = new Array();
         var_1019 = new Array();
         var_829 = new Dictionary();
         super();
         _navigator = param1;
      }
      
      public function get createdFlatId() : int
      {
         return var_1919;
      }
      
      public function get eventMod() : Boolean
      {
         return var_1916;
      }
      
      public function startLoading() : void
      {
         this.var_683 = true;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return false;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         var_1916 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(var_411 != null)
         {
            var_411.dispose();
         }
         var_411 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return var_129 != null && var_129 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return var_129 != null && var_129 as GuestRoomSearchResultData != null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return var_129 as GuestRoomSearchResultData;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return var_193;
      }
      
      public function get allCategories() : Array
      {
         return var_1018;
      }
      
      public function onRoomExit() : void
      {
         if(var_411 != null)
         {
            var_411.dispose();
            var_411 = null;
         }
         if(var_577 != null)
         {
            var_577.dispose();
            var_577 = null;
         }
         if(var_193 != null)
         {
            var_193.dispose();
            var_193 = null;
         }
         _currentRoomOwner = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         disposeCurrentMsg();
         var_129 = param1;
         var_683 = false;
      }
      
      public function get settings() : NavigatorSettingsMessageParser
      {
         return var_1486;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         disposeCurrentMsg();
         var_129 = param1;
         var_683 = false;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         var_577 = null;
         var_193 = null;
         _currentRoomOwner = false;
         if(param1.guestRoom)
         {
            _currentRoomOwner = param1.owner;
         }
         else
         {
            var_577 = param1.publicSpace;
            var_411 = null;
         }
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return _currentRoomOwner;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2309 = param1.limit;
         this.var_1233 = param1.favouriteRoomIds.length;
         this.var_829 = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this.var_829[_loc2_] = "yes";
         }
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return var_129 as PopularRoomTagsData;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return var_577;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return var_1921;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         disposeCurrentMsg();
         var_129 = param1;
         var_683 = false;
      }
      
      public function set avatarId(param1:int) : void
      {
         var_1920 = param1;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return var_193 != null && _currentRoomOwner;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_683;
      }
      
      public function get visibleCategories() : Array
      {
         return var_1019;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         var_1018 = param1;
         var_1019 = new Array();
         for each(_loc2_ in var_1018)
         {
            if(_loc2_.visible)
            {
               var_1019.push(_loc2_);
            }
         }
      }
      
      public function get currentRoomRating() : int
      {
         return var_1915;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return var_1918;
      }
      
      public function set settings(param1:NavigatorSettingsMessageParser) : void
      {
         var_1486 = param1;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(var_129 == null)
         {
            return;
         }
         var_129.dispose();
         var_129 = null;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return var_411;
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         var_829[param1] = !!param2 ? "yes" : null;
         var_1233 += !!param2 ? 1 : -1;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return var_129 as OfficialRoomsData;
      }
      
      public function get avatarId() : int
      {
         return var_1920;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = 0;
         return false;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return var_129 != null && var_129 as OfficialRoomsData != null;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         var_1921 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         var_1915 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         var_1917 = param1;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(var_193 != null)
         {
            var_193.dispose();
         }
         var_193 = param1;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(var_193 == null)
         {
            return false;
         }
         var _loc1_:int = 0;
         return this.var_1486.homeRoomId == _loc1_;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return var_1233 >= var_2309;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         var_1918 = param1;
      }
      
      public function get hcMember() : Boolean
      {
         return var_1917;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return var_193 != null && !_currentRoomOwner;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         var_1919 = param1;
      }
   }
}
