module DriverProfilesHelper

  def helper_duty_status
    case @driver_profile.duty_status
    when 'off_duty'
      content_tag(:span, "Off Duty", class: ["badge badge-pill badge-danger"])
    when 'on_duty'
      content_tag(:span, "On Duty", class: ["badge badge-pill badge-primary"])
    when 'sleeper'
      content_tag(:span, "Sleeper", class: ["badge badge-pill badge-dark"])
    when 'driving'
      content_tag(:span, "Driving", class: ["badge badge-pill badge-success"])
    when 'waiting'
      content_tag(:span, "Waiting", class: ["badge badge-pill badge-warning"]) 
    else
      content_tag(:span, "No Status Recorded", class: ["badge badge-pill badge-danger"]) 
    end 
  end

  def helper_status
    case @driver_profile.status
    when 'active'
      content_tag(:span, "Active", class: ["badge badge-success"])
    when 'deactivated'
      content_tag(:span, "Driver Deactivated", class: ["badge badge-dark"])
    else
      content_tag(:span, "No Status Recorded", class: ["badge badge-primary"]) 
    end 
  end
end
