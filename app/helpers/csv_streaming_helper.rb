require 'csv'

module CsvStreamingHelper

  def stream_csv(filename, object_list)
    set_csv_file_headers(filename)
    set_csv_streaming_headers

    response.status = 200

    write_csv_rows(object_list)
  end

  def write_csv_rows(object_list)
    begin
      #write out the header row
      response.stream.write CSV.generate_line(object_list.first.class.header_row)  if object_list.count > 0

      #write out each row of data
      object_list.each do |obj|
        response.stream.write CSV.generate_line(obj.to_row)
      end
    ensure
      response.stream.close
    end
  end

  def set_csv_file_headers(filename)
    file_name = "#{filename}.csv"
    headers["Content-Type"] = "text/csv"
    headers["Content-disposition"] = "attachment; filename=\"#{file_name}\""
  end

  def set_csv_streaming_headers
    #nginx doc: Setting this to "no" will allow unbuffered responses suitable for Comet and HTTP streaming applications
    headers['X-Accel-Buffering'] = 'no'

    headers["Cache-Control"] ||= "no-cache"
    headers.delete("Content-Length")
  end

end