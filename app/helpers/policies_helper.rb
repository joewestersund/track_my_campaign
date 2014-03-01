module PoliciesHelper
  def show_policies_list(policies_array)
    if policies_array.nil? or policies_array.empty?
      return nil
    else
      return policies_array.map{ |c| c.name }.join(", ")
    end
  end
end
