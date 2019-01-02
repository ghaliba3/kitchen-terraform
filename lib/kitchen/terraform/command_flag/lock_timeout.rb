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

module Kitchen
  module Terraform
    module CommandFlag
      # LockTimeout provides logic to handle the `-lock-timeout` flag.
      class LockTimeout
        def to_s
          @command.to_s.concat " -lock-timeout=#{@lock_timeout}"
        end

        private

        def initialize(command:, lock_timeout:)
          @command = command
          @lock_timeout = lock_timeout
        end
      end
    end
  end
end
