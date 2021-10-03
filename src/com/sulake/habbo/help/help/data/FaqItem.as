package com.sulake.habbo.help.help.data
{
   public class FaqItem
   {
       
      
      private var var_1191:int;
      
      private var var_1190:String;
      
      private var var_1909:String;
      
      private var _index:int;
      
      private var var_1910:Boolean = false;
      
      private var _category:FaqCategory;
      
      public function FaqItem(param1:int, param2:String, param3:int, param4:FaqCategory)
      {
         super();
         var_1191 = param1;
         var_1909 = param2;
         _index = param3;
         _category = param4;
      }
      
      public function get answerText() : String
      {
         return var_1190;
      }
      
      public function get questionId() : int
      {
         return var_1191;
      }
      
      public function get questionText() : String
      {
         return var_1909;
      }
      
      public function set answerText(param1:String) : void
      {
         var_1190 = param1;
         var_1910 = true;
      }
      
      public function get hasAnswer() : Boolean
      {
         return var_1910;
      }
      
      public function get category() : FaqCategory
      {
         return _category;
      }
      
      public function get index() : int
      {
         return _index;
      }
   }
}
