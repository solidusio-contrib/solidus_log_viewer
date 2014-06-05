Deface::Override.new(:virtual_path => "spree/admin/payments/_list",
                     :name => "add_history_header_to_payments_list",
                     :insert_before => "tr[data-hook='payments_header'] th.actions",
                     :text => %Q{<th>History</th>})


Deface::Override.new(:virtual_path => "spree/admin/payments/_list",
                     :name => "add_history_column_to_payments_list",
                     :insert_before => "tr[data-hook='payments_row'] td.actions",
                     :partial => "spree/admin/payments/history")
