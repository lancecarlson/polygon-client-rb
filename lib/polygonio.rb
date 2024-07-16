# frozen_string_literal: true

require "polygonio/version"

require "eventmachine"
require "faraday"
require "faraday/retry"
require "oj"
require "dry-struct"
require "dry-types"
require "permessage_deflate"
require "websocket/driver"

require "polygonio/types"
require "polygonio/rest"
require "polygonio/websocket"
