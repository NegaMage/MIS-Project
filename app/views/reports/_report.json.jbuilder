json.extract! report, :report_code, :report_title, :audit_unit, :creation_date, :dod_party, :dor_vetting, :dod_vetting, :dod_entity, :remarks, :freeze
json.url report_url(report, format: :json)
