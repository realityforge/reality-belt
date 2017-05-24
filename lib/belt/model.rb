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
#
require 'reality/logging'
require 'reality/model'

module Belt
  Reality::Logging.configure(Belt, ::Logger::WARN)

  Reality::Model::Repository.new(:Belt, Belt) do |r|
    r.model_element(:scope)
    r.model_element(:project, :scope)
  end

  class Project
    def pre_init
      @tags = []
    end

    def qualified_name
      "#{self.scope.name}/#{self.name}"
    end

    attr_accessor :tags

    def tag_value(key)
      self.tags.each do |tag|
        if tag =~ /^#{Regexp.escape(key)}=/
          return tag[(key.size + 1)...100000]
        end
      end
      nil
    end

    attr_writer :description

    def description
      @description || ''
    end
  end
end
