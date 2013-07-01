#
# Cookbook:: runit_test
# Minitest:: standalone
#
# Copyright 2013, Scott M. Likens
#
# Copyright 2012, Opscode, Inc.
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
describe "carbon_test::example" do
 
    include MiniTest::Chef::Assertions
    include MiniTest::Chef::Context
    include MiniTest::Chef::Resources

  it "should have a service called graphite-web running" do
    service("graphite-web").must_be_running
  end
  it "should have a service called carbon-cache-a running" do
    service("carbon-cache-a").must_be_running
  end
  it "should have a service called carbon-relay-a running" do
    service("carbon-relay-a").must_be_running
  end
end
