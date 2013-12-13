ROOT = File.expand_path(File.dirname(__FILE__))

namespace :pg do
  task :create, :conn_string do |t, args|
    sql_file = File.join(ROOT, "db", "postgresql", "tables.sql")
    sh "cat #{sql_file} | psql '#{args[:conn_string]}'"
  end

  task :import, :conn_string do |t, args|
    sh "echo \"COPY stations FROM '#{File.join(ROOT, "data", "stations.csv")}' DELIMITER ',' CSV HEADER\" | psql '#{args[:conn_string]}'"
    Dir.glob(File.join(ROOT, "data", "status", "*.csv")) do |csv|
      sh "echo \"COPY station_statuses FROM '#{csv}' DELIMITER ',' CSV HEADER\" | psql '#{args[:conn_string]}'"
    end
  end
end
