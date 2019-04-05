class HomeController < ApplicationController
  def top

  end

  def useGoogleBook
  end

  def join_test
  end

  def input_booksdata
  end

  def detail
    @book = Book.find_by(isbn: params[:isbn])
  end

  def result
    @books = Book.all
  end

  def map
    @book = Book.find_by(isbn: params[:isbn])
  end

  def create
    uploaded_file = fileupload_param[:file]
    output_path = Rails.root.join('public', uploaded_file.original_filename)
    rename_path = Rails.root.join('public', 'isbnBarCode.jpg')

    File.open(output_path, 'w+b') do |fp|
      fp.write  uploaded_file.read
    end
    File.rename(output_path, rename_path)
      redirect_to controller: :books, action: :new
  end

  private
  def fileupload_param
    params.require(:fileupload).permit(:file)
  end


end
