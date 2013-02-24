pdf.text "SO Number: #{@so_header.so_number}"
pdf.image "app/assets/images/logo-lotsapizza.jpg", at: [138, 730]
pdf.text "Customer Name: #{@so_header.customer_maintenance.customer_name}" 
pdf.text_box "Outlet Code: #{@so_header.customer_maintenance.outlet_code}", at: [430, 721]
pdf.text_box "Delivery", at: [477, 707]
pdf.text "Customer Address: #{@so_header.customer_maintenance.outlet_address}"
pdf.text "Date: #{@so_header.order_date}"
pdf.move_down 110

pdf.table [["Product Name", "Unit Price", "Quantity", "Amount"]], header: true, column_widths: [200, 100, 100, 100] do 
  row(0).columns(0..3).font_style = :bold
  row(0).columns(0..3).align = :center
end

@so_header.so_details.each do |detail|
pdf.table [
	["#{ProductMaintenance.find_by_product_code(detail.product_code).product_description}", "#{detail.id}", "#{sprintf('P%0.02f', detail.unit_price)}", "#{sprintf('P%0.02f', detail.amount)}"], 
], column_widths: [200, 100, 100, 100], row_colors: ["FFFFFF", "E5ECF9"] do
  columns(0).align = :left
  columns(1..2).align = :right
  row(0).text_color = "333333"
  row(0).background_color = "FFFFFF"
  row(0).columns(0..3).align = :center
end
end

pdf.table [["Additional Charges"]], header: true, column_widths: [500] do 
  row(0).columns(0..3).font_style = :bold
  row(0).columns(0..3).align = :center
end

pdf.table [
  ["MSF Charge", "", "#{sprintf('P%0.02f', @so_header.customer_maintenance.msf_charge)}"],
  ["Delivery Charge", "", "#{sprintf('P%0.02f', @so_header.customer_maintenance.delivery_charge)}"],
  ["VAT", "", "#{sprintf('P%0.02f', @so_header.vat)}"],
  ["Grand Total", "", "#{sprintf('P%0.02f', @so_header.grand_total)}"]
], column_widths: [200, 200, 100] do
  columns(0).align = :left
  columns(1..2).align = :right
  row(0).text_color = "333333"
  row(0).background_color = "FFFFFF"
  rows(0..3).columns(0..3).align = :center
  row(3).columns(0..3).font_style = :bold
end