require 'test_helper'

class ReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @report = reports(:one)
  end

  test "should get index" do
    get reports_url
    assert_response :success
  end

  test "should get new" do
    get new_report_url
    assert_response :success
  end

  test "should create report" do
    assert_difference('Report.count') do
      post reports_url, params: { report: { report_code: @report.report_code, report_title: @report.report_title, audit_unit: @report.audit_unit, creation_date: @report.creation_date, dod_party: @report.dod_party, dor_vetting: @report.dor_vetting, dod_vetting: @report.dod_vetting, dod_entity @report.dod_entity, remarks: @report.remarks, freeze: @report.freeze } }
    end

    assert_redirected_to report_url(Report.last)
  end

  test "should show report" do
    get report_url(@report)
    assert_response :success
  end

  test "should get edit" do
    get edit_report_url(@report)
    assert_response :success
  end

  test "should update report" do
    patch report_url(@report, params: { report: { report_code: @report.report_code, report_title: @report.report_title, audit_unit: @report.audit_unit, creation_date: @report.creation_date, dod_party: @report.dod_party, dor_vetting: @report.dor_vetting, dod_vetting: @report.dod_vetting, dod_entity @report.dod_entity, remarks: @report.remarks, freeze: @report.freeze } }
    assert_redirected_to report_url(@report)
  end

  test "should destroy report" do
    assert_difference('Report.count', -1) do
      delete register_url(@report)
    end

    assert_redirected_to reports_url
  end
end
