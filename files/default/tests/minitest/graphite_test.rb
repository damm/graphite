require 'minitest/spec'

describe_recipe 'graphite::graphite_test' do

  include MiniTest::Chef::Assertions
  include MiniTest::Chef::Context
  include MiniTest::Chef::Resources

  describe "verify it has the graphite user" do
    it "should have a user named graphite" do
      user("graphite").must_exist
    end
  end

  describe "it should create /opt/graphite and setup virtualenv" do
    it "/opt/graphite should exist" do
      directory("/opt/graphite").must_exist.with(:owner, "graphite")
    end
    it "/opt/graphite/bin/activate should exist" do
      file("/opt/graphite/bin/activate").must_exist
    end
  end

  describe "it should start graphite-web running" do
    it "should have graphite-web running" do
      service("graphite-web").must_be_running
    end
  end
end
