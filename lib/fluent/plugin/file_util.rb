#
# Fluentd
#
#    Licensed under the Apache License, Version 2.0 (the "License");
#    you may not use this file except in compliance with the License.
#    You may obtain a copy of the License at
#
#        http://www.apache.org/licenses/LICENSE-2.0
#
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS,
#    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#    See the License for the specific language governing permissions and
#    limitations under the License.
#

module Fluent
  module FileUtil
    # Check file is writable if file exists
    # Check directory is writable if file does not exist
    #
    # @param [String] path File path
    # @return [Boolean] file is writable or not
    def writable?(path)
      path = File.exist?(path) ? path : File.dirname(path)
      File.writable?(path)
    end
    module_function :writable?
  end
end
