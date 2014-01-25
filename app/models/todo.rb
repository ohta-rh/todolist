##
# = Todo管理モデル
class Todo < ActiveRecord::Base
  LABEL_ENUM =  { default: "",
                  success: "success",
                  important: "important",
                  danger: "danger",
                  warning: "warning"
                }


  def bootstrap_label_class
    return "" if self.label.blank?

    %(label-#{self.label})
  end
end
