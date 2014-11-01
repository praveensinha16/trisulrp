#!/usr/bin/env ruby
# Generated by the protocol buffer compiler. DO NOT EDIT!

require 'protocol_buffers'

module TRP
  # forward declarations
  class Timestamp < ::ProtocolBuffers::Message; end
  class TimeInterval < ::ProtocolBuffers::Message; end
  class StatsTuple < ::ProtocolBuffers::Message; end
  class MeterValues < ::ProtocolBuffers::Message; end
  class MeterInfo < ::ProtocolBuffers::Message; end
  class KeyStats < ::ProtocolBuffers::Message; end
  class KeyDetails < ::ProtocolBuffers::Message; end
  class SessionID < ::ProtocolBuffers::Message; end
  class AlertID < ::ProtocolBuffers::Message; end
  class ResourceID < ::ProtocolBuffers::Message; end
  class CounterGroupDetails < ::ProtocolBuffers::Message; end
  class SessionDetails < ::ProtocolBuffers::Message; end
  class Message < ::ProtocolBuffers::Message; end
  class HelloRequest < ::ProtocolBuffers::Message; end
  class HelloResponse < ::ProtocolBuffers::Message; end
  class ErrorResponse < ::ProtocolBuffers::Message; end
  class OKResponse < ::ProtocolBuffers::Message; end
  class ReleaseContextRequest < ::ProtocolBuffers::Message; end
  class CounterItemRequest < ::ProtocolBuffers::Message; end
  class CounterItemResponse < ::ProtocolBuffers::Message; end
  class BulkCounterItemRequest < ::ProtocolBuffers::Message; end
  class BulkCounterItemResponse < ::ProtocolBuffers::Message; end
  class CounterGroupRequest < ::ProtocolBuffers::Message; end
  class CounterGroupResponse < ::ProtocolBuffers::Message; end
  class FilteredDatagramRequest < ::ProtocolBuffers::Message; end
  class FilteredDatagramResponse < ::ProtocolBuffers::Message; end
  class ControlledContextRequest < ::ProtocolBuffers::Message; end
  class ControlledContextResponse < ::ProtocolBuffers::Message; end
  class SearchKeysRequest < ::ProtocolBuffers::Message; end
  class SearchKeysResponse < ::ProtocolBuffers::Message; end
  class CounterGroupInfoRequest < ::ProtocolBuffers::Message; end
  class CounterGroupInfoResponse < ::ProtocolBuffers::Message; end
  class SessionItemRequest < ::ProtocolBuffers::Message; end
  class SessionItemResponse < ::ProtocolBuffers::Message; end
  class QuerySessionsRequest < ::ProtocolBuffers::Message; end
  class QuerySessionsResponse < ::ProtocolBuffers::Message; end
  class UpdateKeyRequest < ::ProtocolBuffers::Message; end
  class SessionTrackerRequest < ::ProtocolBuffers::Message; end
  class SessionTrackerResponse < ::ProtocolBuffers::Message; end
  class SessionGroupRequest < ::ProtocolBuffers::Message; end
  class SessionGroupResponse < ::ProtocolBuffers::Message; end
  class ServerStatsRequest < ::ProtocolBuffers::Message; end
  class ServerStatsResponse < ::ProtocolBuffers::Message; end
  class AlertItemRequest < ::ProtocolBuffers::Message; end
  class AlertItemResponse < ::ProtocolBuffers::Message; end
  class AlertGroupRequest < ::ProtocolBuffers::Message; end
  class AlertGroupResponse < ::ProtocolBuffers::Message; end
  class ResourceItemRequest < ::ProtocolBuffers::Message; end
  class ResourceItemResponse < ::ProtocolBuffers::Message; end
  class ResourceGroupRequest < ::ProtocolBuffers::Message; end
  class ResourceGroupResponse < ::ProtocolBuffers::Message; end
  class KeyLookupRequest < ::ProtocolBuffers::Message; end
  class KeyLookupResponse < ::ProtocolBuffers::Message; end
  class GrepRequest < ::ProtocolBuffers::Message; end
  class GrepResponse < ::ProtocolBuffers::Message; end
  class KeySpaceRequest < ::ProtocolBuffers::Message; end
  class KeySpaceResponse < ::ProtocolBuffers::Message; end
  class TopperTrendRequest < ::ProtocolBuffers::Message; end
  class TopperTrendResponse < ::ProtocolBuffers::Message; end

  # enums
  module AuthLevel
    include ::ProtocolBuffers::Enum

    set_fully_qualified_name "TRP.AuthLevel"

    ADMIN = 1
    BASIC_USER = 2
    FORENSIC_USER = 3
    BLOCKED_USER = 4
  end

  module CompressionType
    include ::ProtocolBuffers::Enum

    set_fully_qualified_name "TRP.CompressionType"

    UNCOMPRESSED = 1
    GZIP = 2
  end

  module PcapFormat
    include ::ProtocolBuffers::Enum

    set_fully_qualified_name "TRP.PcapFormat"

    LIBPCAP = 1
    UNSNIFF = 2
  end

  module PcapDisposition
    include ::ProtocolBuffers::Enum

    set_fully_qualified_name "TRP.PcapDisposition"

    DOWNLOAD = 1
    SAVE_ON_SERVER = 2
  end

  class Timestamp < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.Timestamp"

    required :int64, :tv_sec, 1
    optional :int64, :tv_usec, 2, :default => 0
  end

  class TimeInterval < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.TimeInterval"

    required ::TRP::Timestamp, :from, 1
    required ::TRP::Timestamp, :to, 2
  end

  class StatsTuple < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.StatsTuple"

    required ::TRP::Timestamp, :ts, 1
    required :int64, :val, 2
  end

  class MeterValues < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.MeterValues"

    required :int32, :meter, 1
    repeated ::TRP::StatsTuple, :values, 2
    optional :int64, :total, 3
    optional :int64, :seconds, 4
  end

  class MeterInfo < ::ProtocolBuffers::Message
    # forward declarations

    # enums
    module MeterType
      include ::ProtocolBuffers::Enum

      set_fully_qualified_name "TRP.MeterInfo.MeterType"

      VT_INVALID = 0
      VT_RATE_COUNTER_WITH_SLIDING_WINDOW = 1
      VT_COUNTER = 2
      VT_COUNTER_WITH_SLIDING_WINDOW = 3
      VT_RATE_COUNTER = 4
      VT_GAUGE = 5
      VT_GAUGE_MIN_MAX_AVG = 6
      VT_AUTO = 7
      VT_RUNNING_COUNTER = 8
      VT_AVERAGE = 9
    end

    set_fully_qualified_name "TRP.MeterInfo"

    required :int32, :id, 1
    required ::TRP::MeterInfo::MeterType, :type, 2
    required :int32, :topcount, 3
    required :string, :name, 4
    optional :string, :description, 5
    optional :string, :units, 6
  end

  class KeyStats < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.KeyStats"

    optional :int64, :context, 1, :default => 0
    required :string, :counter_group, 2
    required :string, :key, 3
    repeated ::TRP::MeterValues, :meters, 4
  end

  class KeyDetails < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.KeyDetails"

    required :string, :key, 1
    optional :string, :label, 2
    optional :string, :description, 3
    optional :int64, :metric, 4
  end

  class SessionID < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.SessionID"

    required :int64, :slice_id, 1
    required :int64, :session_id, 2
  end

  class AlertID < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.AlertID"

    required :int64, :slice_id, 1
    required :int64, :alert_id, 2
  end

  class ResourceID < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.ResourceID"

    required :int64, :slice_id, 1
    required :int64, :resource_id, 2
  end

  class CounterGroupDetails < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.CounterGroupDetails"

    required :string, :guid, 1
    required :string, :name, 2
    optional :int64, :bucket_size, 3
    optional ::TRP::TimeInterval, :time_interval, 4
    optional :int64, :topper_bucket_size, 5
    repeated ::TRP::MeterInfo, :meters, 6
  end

  class SessionDetails < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.SessionDetails"

    optional :string, :session_key, 1
    required ::TRP::SessionID, :session_id, 2
    optional :string, :user_label, 3
    required ::TRP::TimeInterval, :time_interval, 4
    required :int64, :state, 5
    required :int64, :az_bytes, 6
    required :int64, :za_bytes, 7
    required :int64, :az_packets, 8
    required :int64, :za_packets, 9
    required ::TRP::KeyDetails, :key1A, 10
    required ::TRP::KeyDetails, :key2A, 11
    required ::TRP::KeyDetails, :key1Z, 12
    required ::TRP::KeyDetails, :key2Z, 13
    required ::TRP::KeyDetails, :protocol, 14
    optional ::TRP::KeyDetails, :nf_routerid, 15
    optional ::TRP::KeyDetails, :nf_ifindex_in, 16
    optional ::TRP::KeyDetails, :nf_ifindex_out, 17
    optional :string, :tags, 18
    required :int64, :az_payload, 19
    required :int64, :za_payload, 20
    required :int64, :setup_rtt, 21
    required :int64, :retransmissions, 22
    optional :int64, :tracker_statval, 23
  end

  class Message < ::ProtocolBuffers::Message
    # forward declarations

    # enums
    module Command
      include ::ProtocolBuffers::Enum

      set_fully_qualified_name "TRP.Message.Command"

      HELLO_REQUEST = 1
      HELLO_RESPONSE = 2
      OK_RESPONSE = 3
      ERROR_RESPONSE = 5
      COUNTER_GROUP_REQUEST = 6
      COUNTER_GROUP_RESPONSE = 7
      COUNTER_ITEM_REQUEST = 8
      COUNTER_ITEM_RESPONSE = 9
      RELEASE_RESOURCE_REQUEST = 10
      RELEASE_CONTEXT_REQUEST = 11
      CONTROLLED_COUNTER_GROUP_REQUEST = 12
      CONTROLLED_COUNTER_GROUP_RESPONSE = 13
      FILTERED_DATAGRAMS_REQUEST = 14
      FILTERED_DATAGRAMS_RESPONSE = 15
      CONTROLLED_CONTEXT_REQUEST = 16
      CONTROLLED_CONTEXT_RESPONSE = 17
      SEARCH_KEYS_REQUEST = 18
      SEARCH_KEYS_RESPONSE = 19
      COUNTER_GROUP_INFO_REQUEST = 20
      COUNTER_GROUP_INFO_RESPONSE = 21
      SESSION_TRACKER_REQUEST = 22
      SESSION_TRACKER_RESPONSE = 23
      SESSION_ITEM_REQUEST = 24
      SESSION_ITEM_RESPONSE = 25
      BULK_COUNTER_ITEM_REQUEST = 26
      BULK_COUNTER_ITEM_RESPONSE = 27
      CGMONITOR_REQUEST = 28
      CGMONITOR_RESPONSE = 29
      TOPPER_SNAPSHOT_REQUEST = 30
      TOPPER_SNAPSHOT_RESPONSE = 31
      UPDATE_KEY_REQUEST = 32
      UPDATE_KEY_RESPONSE = 33
      QUERY_SESSIONS_REQUEST = 34
      QUERY_SESSIONS_RESPONSE = 35
      RING_STATS_REQUEST = 36
      RING_STATS_RESPONSE = 37
      SERVER_STATS_REQUEST = 38
      SERVER_STATS_RESPONSE = 39
      SESSION_GROUP_REQUEST = 40
      SESSION_GROUP_RESPONSE = 41
      ALERT_ITEM_REQUEST = 42
      ALERT_ITEM_RESPONSE = 43
      ALERT_GROUP_REQUEST = 44
      ALERT_GROUP_RESPONSE = 45
      RESOURCE_ITEM_REQUEST = 46
      RESOURCE_ITEM_RESPONSE = 47
      RESOURCE_GROUP_REQUEST = 48
      RESOURCE_GROUP_RESPONSE = 49
      KEY_LOOKUP_REQUEST = 50
      KEY_LOOKUP_RESPONSE = 51
      GREP_REQUEST = 60
      GREP_RESPONSE = 61
      KEYSPACE_REQUEST = 70
      KEYSPACE_RESPONSE = 71
      TOPPER_TREND_REQUEST = 72
      TOPPER_TREND_RESPONSE = 73
    end

    set_fully_qualified_name "TRP.Message"

    required ::TRP::Message::Command, :trp_command, 1
    optional ::TRP::HelloRequest, :hello_request, 2
    optional ::TRP::HelloResponse, :hello_response, 3
    optional ::TRP::OKResponse, :ok_response, 4
    optional ::TRP::ErrorResponse, :error_response, 5
    optional ::TRP::CounterGroupRequest, :counter_group_request, 6
    optional ::TRP::CounterGroupResponse, :counter_group_response, 7
    optional ::TRP::CounterItemRequest, :counter_item_request, 8
    optional ::TRP::CounterItemResponse, :counter_item_response, 9
    optional ::TRP::ReleaseContextRequest, :release_context_request, 11
    optional ::TRP::FilteredDatagramRequest, :filtered_datagram_request, 14
    optional ::TRP::FilteredDatagramResponse, :filtered_datagram_response, 15
    optional ::TRP::ControlledContextRequest, :controlled_context_request, 16
    optional ::TRP::ControlledContextResponse, :controlled_context_response, 17
    optional ::TRP::SearchKeysRequest, :search_keys_request, 18
    optional ::TRP::SearchKeysResponse, :search_keys_response, 19
    optional ::TRP::CounterGroupInfoRequest, :counter_group_info_request, 20
    optional ::TRP::CounterGroupInfoResponse, :counter_group_info_response, 21
    optional ::TRP::SessionItemRequest, :session_item_request, 22
    optional ::TRP::SessionItemResponse, :session_item_response, 23
    optional ::TRP::BulkCounterItemRequest, :bulk_counter_item_request, 24
    optional ::TRP::BulkCounterItemResponse, :bulk_counter_item_response, 25
    optional ::TRP::UpdateKeyRequest, :update_key_request, 30
    optional ::TRP::QuerySessionsRequest, :query_sessions_request, 31
    optional ::TRP::QuerySessionsResponse, :query_sessions_response, 32
    optional ::TRP::SessionTrackerRequest, :session_tracker_request, 33
    optional ::TRP::SessionTrackerResponse, :session_tracker_response, 34
    optional ::TRP::ServerStatsRequest, :server_stats_request, 37
    optional ::TRP::ServerStatsResponse, :server_stats_response, 38
    optional ::TRP::SessionGroupRequest, :session_group_request, 39
    optional ::TRP::SessionGroupResponse, :session_group_response, 40
    optional ::TRP::AlertItemRequest, :alert_item_request, 41
    optional ::TRP::AlertItemResponse, :alert_item_response, 42
    optional ::TRP::AlertGroupRequest, :alert_group_request, 43
    optional ::TRP::AlertGroupResponse, :alert_group_response, 44
    optional ::TRP::ResourceItemRequest, :resource_item_request, 45
    optional ::TRP::ResourceItemResponse, :resource_item_response, 46
    optional ::TRP::ResourceGroupRequest, :resource_group_request, 47
    optional ::TRP::ResourceGroupResponse, :resource_group_response, 48
    optional ::TRP::KeyLookupRequest, :key_lookup_request, 49
    optional ::TRP::KeyLookupResponse, :key_lookup_response, 50
    optional ::TRP::GrepRequest, :grep_request, 51
    optional ::TRP::GrepResponse, :grep_response, 52
    optional ::TRP::KeySpaceRequest, :keyspace_request, 53
    optional ::TRP::KeySpaceResponse, :keyspace_response, 54
    optional ::TRP::TopperTrendRequest, :topper_trend_request, 55
    optional ::TRP::TopperTrendResponse, :topper_trend_response, 56
  end

  class HelloRequest < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.HelloRequest"

    required :string, :station_id, 1
  end

  class HelloResponse < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.HelloResponse"

    required :string, :trisul_id, 1
    required :string, :trisul_description, 2
    required :string, :connection_id, 3
    required :string, :version_string, 4
    required ::TRP::Timestamp, :connection_start_time, 5
    required ::TRP::Timestamp, :connection_up_time, 6
    required ::TRP::AuthLevel, :current_auth_level, 7
  end

  class ErrorResponse < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.ErrorResponse"

    required :int64, :original_command, 1
    required :int64, :error_code, 2
    required :string, :error_message, 3
  end

  class OKResponse < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.OKResponse"

    required :int64, :original_command, 1
    optional :string, :message, 2
  end

  class ReleaseContextRequest < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.ReleaseContextRequest"

    optional :int64, :context, 1
  end

  class CounterItemRequest < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.CounterItemRequest"

    optional :int64, :context, 1, :default => 0
    required :string, :counter_group, 2
    optional :int64, :meter, 3
    required :string, :key, 4
    required ::TRP::TimeInterval, :time_interval, 5
    optional :int64, :volumes_only, 6, :default => 0
  end

  class CounterItemResponse < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.CounterItemResponse"

    required ::TRP::KeyStats, :stats, 1
  end

  class BulkCounterItemRequest < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.BulkCounterItemRequest"

    optional :int64, :context, 1, :default => 0
    required :string, :counter_group, 2
    required :int64, :meter, 3
    required ::TRP::TimeInterval, :time_interval, 4
    repeated :string, :keys, 5
  end

  class BulkCounterItemResponse < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.BulkCounterItemResponse"

    repeated ::TRP::KeyStats, :stats, 1
  end

  class CounterGroupRequest < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.CounterGroupRequest"

    optional :int64, :context, 1, :default => 0
    required :string, :counter_group, 2
    optional :int64, :meter, 3, :default => 0
    optional :int64, :maxitems, 4, :default => 10
    optional ::TRP::TimeInterval, :time_interval, 5
    optional ::TRP::Timestamp, :time_instant, 6
    optional :int64, :flags, 7
  end

  class CounterGroupResponse < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.CounterGroupResponse"

    required :int64, :context, 1
    required :string, :counter_group, 2
    required :int64, :meter, 3
    optional :int64, :sysgrouptotal, 4
    repeated ::TRP::KeyDetails, :keys, 6
  end

  class FilteredDatagramRequest < ::ProtocolBuffers::Message
    # forward declarations
    class ByFilterExpr < ::ProtocolBuffers::Message; end
    class BySession < ::ProtocolBuffers::Message; end
    class ByAlert < ::ProtocolBuffers::Message; end
    class ByResource < ::ProtocolBuffers::Message; end

    set_fully_qualified_name "TRP.FilteredDatagramRequest"

    # nested messages
    class ByFilterExpr < ::ProtocolBuffers::Message
      set_fully_qualified_name "TRP.FilteredDatagramRequest.ByFilterExpr"

      required ::TRP::TimeInterval, :time_interval, 1
      required :string, :filter_expression, 2
    end

    class BySession < ::ProtocolBuffers::Message
      set_fully_qualified_name "TRP.FilteredDatagramRequest.BySession"

      optional :string, :session_group, 1, :default => "{99A78737-4B41-4387-8F31-8077DB917336}"
      repeated ::TRP::SessionID, :session_ids, 2
    end

    class ByAlert < ::ProtocolBuffers::Message
      set_fully_qualified_name "TRP.FilteredDatagramRequest.ByAlert"

      optional :string, :alert_group, 1, :default => "{9AFD8C08-07EB-47E0-BF05-28B4A7AE8DC9}"
      repeated ::TRP::AlertID, :alert_ids, 2
    end

    class ByResource < ::ProtocolBuffers::Message
      set_fully_qualified_name "TRP.FilteredDatagramRequest.ByResource"

      required :string, :resource_group, 1
      repeated ::TRP::ResourceID, :resource_ids, 2
    end

    optional :int64, :max_packets, 1, :default => 0
    optional :int64, :max_bytes, 2, :default => 0
    optional ::TRP::CompressionType, :compress_type, 3, :default => ::TRP::CompressionType::UNCOMPRESSED
    optional ::TRP::FilteredDatagramRequest::ByFilterExpr, :filter_expression, 4
    optional ::TRP::FilteredDatagramRequest::BySession, :session, 5
    optional ::TRP::FilteredDatagramRequest::ByAlert, :alert, 6
    optional ::TRP::FilteredDatagramRequest::ByResource, :resource, 7
    optional ::TRP::PcapDisposition, :disposition, 8, :default => ::TRP::PcapDisposition::DOWNLOAD
  end

  class FilteredDatagramResponse < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.FilteredDatagramResponse"

    required ::TRP::PcapFormat, :format, 1
    required ::TRP::CompressionType, :compress_type, 2
    required ::TRP::TimeInterval, :time_interval, 3
    required :int64, :num_datagrams, 4
    required :int64, :num_bytes, 5
    required :string, :sha1, 6
    required :bytes, :contents, 7
    required ::TRP::PcapDisposition, :disposition, 8
    optional :string, :path, 9
  end

  class ControlledContextRequest < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.ControlledContextRequest"

    required ::TRP::TimeInterval, :time_interval, 1
    required :string, :filter_expression, 2
  end

  class ControlledContextResponse < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.ControlledContextResponse"

    required :int64, :context, 1
    optional :string, :context_db, 2
    required ::TRP::TimeInterval, :time_interval, 3
  end

  class SearchKeysRequest < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.SearchKeysRequest"

    optional :int64, :context, 1, :default => 0
    required :string, :counter_group, 2
    required :string, :pattern, 3
    required :int64, :maxitems, 4
  end

  class SearchKeysResponse < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.SearchKeysResponse"

    optional :int64, :context, 1
    required :string, :counter_group, 2
    repeated ::TRP::KeyDetails, :found_keys, 3
  end

  class CounterGroupInfoRequest < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.CounterGroupInfoRequest"

    optional :int64, :context, 1, :default => 0
    optional :string, :counter_group, 2
    optional :bool, :get_meter_info, 3, :default => false
  end

  class CounterGroupInfoResponse < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.CounterGroupInfoResponse"

    optional :int64, :context, 1
    repeated ::TRP::CounterGroupDetails, :group_details, 2
  end

  class SessionItemRequest < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.SessionItemRequest"

    optional :int64, :context, 1, :default => 0
    optional :string, :session_group, 2, :default => "{99A78737-4B41-4387-8F31-8077DB917336}"
    repeated :string, :session_keys, 3
    repeated ::TRP::SessionID, :session_ids, 4
    optional :bool, :resolve_keys, 5, :default => true
  end

  class SessionItemResponse < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.SessionItemResponse"

    optional :int64, :context, 1, :default => 0
    required :string, :session_group, 2
    repeated ::TRP::SessionDetails, :sessions, 3
  end

  class QuerySessionsRequest < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.QuerySessionsRequest"

    optional :int64, :context, 1, :default => 0
    optional :string, :session_group, 2, :default => "{99A78737-4B41-4387-8F31-8077DB917336}"
    required ::TRP::TimeInterval, :time_interval, 3
    optional :string, :key, 4
    optional :string, :source_ip, 5
    optional :string, :source_port, 6
    optional :string, :dest_ip, 7
    optional :string, :dest_port, 8
    optional :string, :any_ip, 9
    optional :string, :any_port, 10
    optional :string, :ip_pair, 11
    optional :string, :protocol, 12
    optional :string, :flowtag, 13
    optional :string, :nf_routerid, 14
    optional :string, :nf_ifindex_in, 15
    optional :string, :nf_ifindex_out, 16
    optional :string, :subnet_24, 17
    optional :string, :subnet_16, 18
    optional :int64, :maxitems, 19, :default => 100
    optional :int64, :volume_filter, 20, :default => 0
    optional :bool, :resolve_keys, 21, :default => true
  end

  class QuerySessionsResponse < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.QuerySessionsResponse"

    optional :int64, :context, 1
    required :string, :session_group, 2
    repeated ::TRP::SessionDetails, :sessions, 3
  end

  class UpdateKeyRequest < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.UpdateKeyRequest"

    optional :int64, :context, 1, :default => 0
    required :string, :counter_group, 2
    required :string, :key, 4
    required :string, :label, 5
    optional :string, :description, 6
  end

  class SessionTrackerRequest < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.SessionTrackerRequest"

    optional :int64, :context, 1, :default => 0
    optional :string, :session_group, 2, :default => "{99A78737-4B41-4387-8F31-8077DB917336}"
    required :int64, :tracker_id, 3, :default => 1
    optional :int64, :maxitems, 4, :default => 100
    required ::TRP::TimeInterval, :time_interval, 5
  end

  class SessionTrackerResponse < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.SessionTrackerResponse"

    optional :int64, :context, 1
    required :string, :session_group, 2
    repeated ::TRP::SessionDetails, :sessions, 3
    optional :int64, :tracker_id, 4
  end

  class SessionGroupRequest < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.SessionGroupRequest"

    optional :int64, :context, 1, :default => 0
    optional :string, :session_group, 2, :default => "{99A78737-4B41-4387-8F31-8077DB917336}"
    optional :int64, :tracker_id, 3
    optional :string, :key_filter, 4
    optional :int64, :maxitems, 5, :default => 100
  end

  class SessionGroupResponse < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.SessionGroupResponse"

    optional :int64, :context, 1
    required :string, :session_group, 2
    repeated :string, :session_keys, 3
  end

  class ServerStatsRequest < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.ServerStatsRequest"

    required :int64, :param, 1
  end

  class ServerStatsResponse < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.ServerStatsResponse"

    required :string, :instance_name, 1
    required :int64, :connections, 2
    required :int64, :uptime_seconds, 3
    required :double, :cpu_usage_percent_trisul, 4
    required :double, :cpu_usage_percent_total, 5
    required :double, :mem_usage_trisul, 6
    required :double, :mem_usage_total, 7
    required :double, :mem_total, 8
    required :int64, :size_total, 9
    required :double, :drop_percent_cap, 11
    required :double, :drop_percent_trisul, 12
    required ::TRP::TimeInterval, :time_interval, 13
  end

  class AlertItemRequest < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.AlertItemRequest"

    optional :int64, :context, 1, :default => 0
    required :string, :alert_group, 2
    repeated ::TRP::AlertID, :alert_ids, 3
  end

  class AlertItemResponse < ::ProtocolBuffers::Message
    # forward declarations
    class Item < ::ProtocolBuffers::Message; end

    set_fully_qualified_name "TRP.AlertItemResponse"

    # nested messages
    class Item < ::ProtocolBuffers::Message
      set_fully_qualified_name "TRP.AlertItemResponse.Item"

      optional :int64, :sensor_id, 1
      required ::TRP::Timestamp, :time, 2
      required ::TRP::AlertID, :alert_id, 3
      optional :string, :source_ip, 4
      optional :string, :source_port, 5
      optional :string, :destination_ip, 6
      optional :string, :destination_port, 7
      required :string, :sigid, 8
      required :string, :classification, 9
      required :string, :priority, 10
      required ::TRP::Timestamp, :dispatch_time, 11
      required :string, :aux_message1, 12
      required :string, :aux_message2, 13
    end

    optional :int64, :context, 1
    required :string, :alert_group, 2
    repeated ::TRP::AlertItemResponse::Item, :items, 3
  end

  class AlertGroupRequest < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.AlertGroupRequest"

    optional :int64, :context, 1, :default => 0
    required :string, :alert_group, 2
    required ::TRP::TimeInterval, :time_interval, 3
    optional :int64, :maxitems, 5, :default => 10
    optional :string, :source_ip, 6
    optional :string, :source_port, 7
    optional :string, :destination_ip, 8
    optional :string, :destination_port, 9
    optional :string, :sigid, 10
    optional :string, :classification, 11
    optional :string, :priority, 12
    optional :string, :aux_message1, 13
    optional :string, :aux_message2, 14
  end

  class AlertGroupResponse < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.AlertGroupResponse"

    optional :int64, :context, 1
    required :string, :alert_group, 2
    repeated ::TRP::AlertID, :alerts, 3
  end

  class ResourceItemRequest < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.ResourceItemRequest"

    optional :int64, :context, 1, :default => 0
    required :string, :resource_group, 2
    repeated ::TRP::ResourceID, :resource_ids, 3
  end

  class ResourceItemResponse < ::ProtocolBuffers::Message
    # forward declarations
    class Item < ::ProtocolBuffers::Message; end

    set_fully_qualified_name "TRP.ResourceItemResponse"

    # nested messages
    class Item < ::ProtocolBuffers::Message
      set_fully_qualified_name "TRP.ResourceItemResponse.Item"

      required ::TRP::Timestamp, :time, 1
      required ::TRP::ResourceID, :resource_id, 2
      optional :string, :source_ip, 3
      optional :string, :source_port, 4
      optional :string, :destination_ip, 5
      optional :string, :destination_port, 6
      optional :string, :uri, 7
      optional :string, :userlabel, 8
    end

    optional :int64, :context, 1
    required :string, :resource_group, 2
    repeated ::TRP::ResourceItemResponse::Item, :items, 3
  end

  class ResourceGroupRequest < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.ResourceGroupRequest"

    optional :int64, :context, 1, :default => 0
    required :string, :resource_group, 2
    required ::TRP::TimeInterval, :time_interval, 3
    optional :int64, :maxitems, 4, :default => 10
    optional :string, :source_ip, 5
    optional :string, :source_port, 6
    optional :string, :destination_ip, 7
    optional :string, :destination_port, 8
    optional :string, :uri_pattern, 9
    optional :string, :userlabel_pattern, 10
    repeated :string, :uri_list, 11
  end

  class ResourceGroupResponse < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.ResourceGroupResponse"

    optional :int64, :context, 1
    required :string, :resource_group, 2
    repeated ::TRP::ResourceID, :resources, 3
  end

  class KeyLookupRequest < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.KeyLookupRequest"

    optional :int64, :context, 1, :default => 0
    required :string, :counter_group, 2
    repeated :string, :keys, 3
  end

  class KeyLookupResponse < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.KeyLookupResponse"

    optional :int64, :context, 1
    required :string, :counter_group, 2
    repeated ::TRP::KeyDetails, :key_details, 3
  end

  class GrepRequest < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.GrepRequest"

    optional :int64, :context, 1, :default => 0
    optional :string, :session_group, 2, :default => "{99A78737-4B41-4387-8F31-8077DB917336}"
    required ::TRP::TimeInterval, :time_interval, 3
    optional :int64, :maxitems, 4, :default => 50
    optional :string, :pattern, 5
    repeated :string, :md5list, 6
  end

  class GrepResponse < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.GrepResponse"

    optional :int64, :context, 1
    optional :string, :session_group, 2, :default => "{99A78737-4B41-4387-8F31-8077DB917336}"
    repeated ::TRP::SessionDetails, :sessions, 3
    repeated :string, :hints, 4
  end

  class KeySpaceRequest < ::ProtocolBuffers::Message
    # forward declarations
    class KeySpace < ::ProtocolBuffers::Message; end

    set_fully_qualified_name "TRP.KeySpaceRequest"

    # nested messages
    class KeySpace < ::ProtocolBuffers::Message
      set_fully_qualified_name "TRP.KeySpaceRequest.KeySpace"

      required :string, :from, 1
      required :string, :to, 2
    end

    optional :int64, :context, 1, :default => 0
    required :string, :counter_group, 2
    required ::TRP::TimeInterval, :time_interval, 3
    optional :int64, :maxitems, 4, :default => 100
    repeated ::TRP::KeySpaceRequest::KeySpace, :spaces, 5
  end

  class KeySpaceResponse < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.KeySpaceResponse"

    optional :int64, :context, 1
    optional :string, :counter_group, 2
    repeated :string, :hits, 3
  end

  class TopperTrendRequest < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.TopperTrendRequest"

    optional :int64, :context, 1, :default => 0
    required :string, :counter_group, 2
    optional :int64, :meter, 3, :default => 0
    optional :int64, :maxitems, 4, :default => 10
    optional ::TRP::TimeInterval, :time_interval, 5
  end

  class TopperTrendResponse < ::ProtocolBuffers::Message
    set_fully_qualified_name "TRP.TopperTrendResponse"

    required :int64, :context, 1
    required :string, :counter_group, 2
    required :int64, :meter, 3
    repeated ::TRP::KeyStats, :keytrends, 4
  end

end
