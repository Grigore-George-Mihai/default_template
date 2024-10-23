# frozen_string_literal: true

require "sidekiq-scheduler"

module Pg
  class CaptureQueryStatsJob
    include Sidekiq::Job

    def perform
      Rake::Task.clear
      Rails.application.load_tasks
      Rake::Task["pghero:capture_query_stats"].invoke
    end
  end
end
