# Trisul Remote Protocol TRP Demo script
# Akhil.M & Dhinesh.K (c) 2010 Unleash Networks
# Testing change 
require 'rubygems'
require './helper'
include TrisulRP::Protocol

class TestTrisulrp < Test::Unit::TestCase


	# demonstrates getting all DNS resources for smtp (string contains smtp)
	def test_query_resources

    target_ip = "0A.02.C7.EB"  # 10.2.199.235"

    TrisulRP::Protocol.connect("127.0.0.1", 12001,"Demo_Client.crt","Demo_Client.key") do |conn|
  
      tm_arr = TrisulRP::Protocol. get_available_time(conn)

      req = TrisulRP::Protocol.mk_request(TRP::Message::Command::RESOURCE_GROUP_REQUEST,
        :context => 0,
        :resource_group => TrisulRP::Guids::RG_DNS,
        :uri_pattern => "smtp",:maxitems  => 1000,                                                                                                                   :time_interval => mk_time_interval(tm_arr))

      TrisulRP::Protocol.get_response(conn,req) do |resp|

	     	# matching resource ids
        resource_ids = resp.resources.collect do   |res|
          TRP::ResourceID.new(:slice_id => res.slice_id, :resource_id => res.resource_id)
        end

        follow_up = TrisulRP::Protocol.mk_request( TRP::Message::Command::RESOURCE_ITEM_REQUEST,
          :context => 0, :resource_group => TrisulRP::Guids::RG_DNS,
          :resource_ids => resource_ids)

        TrisulRP::Protocol.get_response(conn,follow_up) do | resp |
          resp.items.each do |item|
            print "#{Time.at(item.time.tv_sec)} "
            print "#{item.source_ip}".ljust(28)
            print "#{item.source_port}".ljust(11)
            print "#{item.destination_ip}".ljust(28)
            print "#{item.destination_port}".ljust(11)
            print "#{item.uri}".rjust(10)
            print "\n"
          end
        end
      end
    end

  end
 
end
