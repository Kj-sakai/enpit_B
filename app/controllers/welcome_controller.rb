# coding: utf-8
class WelcomeController < ApplicationController
 
require 'youtube_search'
require 'pp'
 
keyword = "GLAY 函館"
option = {
  :per_page => "10",
  :page     => "5",
}
 
videos = YoutubeSearch::search(keyword, option)
 
p "video count is #{videos.count}"
p "--------------------------------"
 
videos.each do |video|
  p video["video_id"]
  p video["title"]
  p video["content"]
  p "---------------------------------"

end

end
