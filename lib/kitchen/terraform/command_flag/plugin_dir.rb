# frozen_string_literal: true

# Copyright 2016 New Context Services, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require "kitchen"
require "shellwords"

module Kitchen
  module Terraform
    module CommandFlag
      # PluginDir provides logic to handle the `-plugin-dir` flag.
      class PluginDir
        def to_s
          if @plugin_dir
            "#{@command} -plugin-dir=\"#{::Shellwords.shelljoin ::Shellwords.shellsplit @plugin_dir}\""
          else
            @command.to_s
          end
        end

        private

        def initialize(command:, plugin_dir:)
          @command = command
          @plugin_dir = plugin_dir
        end
      end
    end
  end
end
