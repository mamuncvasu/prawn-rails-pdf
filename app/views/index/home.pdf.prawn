prawn_document(filename: "report.pdf") do |pdf|
  logo = "#{Rails.root}/app/assets/images/cvasu.png"
  header = [ [ {image: logo, image_height: 50, image_width: 50, rowspan: 2},
                "Chattogram Veterinary and Animal Sciences University"],
                [" .         Khulshi, Chattogram-4225, Bangladesh                    ."]]

  pdf.table header, column_widths: [80, 400] do
    row(0).border_width = 0
    row(1).border_width = 0
    row(0).font_style = :bold
  end

  #pdf.text "#{User.all.to_json}"
  #pdf.text "Chattogram Veterinary and Animal Sciences University", align: :center, style: :bold
  pdf.move_down 20
  pdf.text "List of Users [#{@users.size}]", style: :bold, min_font_size: 14
  pdf.move_down 20

# Table Content Here
  data = [["Serial", "Name", "Email"]] # table Header
  @users.map.with_index {|u,i| data << [i+1, u.name, u.email]}

  pdf.table data, width: 530   do
    row(0).font_style = :bold    # table Header bold
  end

end