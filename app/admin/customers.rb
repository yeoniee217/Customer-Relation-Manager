ActiveAdmin.register Customer do
  permit_params :full_name, :phone_number, :email, :notes, :image

  form do |f|
    f.semantic_errors
    f.inputs
    f.inputs do
      f.input :image, as: :file
    end
    f.actions
  end
end
