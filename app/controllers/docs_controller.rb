class DocsController < ApplicationController
  def index
    @docs = Doc.all
  end

  def new
    @doc = Doc.new
  end

  def create
    @doc = Doc.new(doc_params)
    if @doc.save
        redirect_to docs_path, notice: "The doc #{@doc.name} has been uploaded." 
    else
        render "new"
    end     
  end
    
  def update
    @doc = Doc.find(params[:id])
  end

  def edit
    @doc = Doc.find(params[:id])
  end
    
  def view
    @doc = Doc.find(params[:id])
  end  

  def destroy
    @doc = Doc.find(params[:id])
    @doc.destroy
    redirect_to docs_path, notice:  "The doc #{@doc.name} has been deleted."
  end
private
      def doc_params
      params.require(:doc).permit(:name, :description,:attachment)
   end
end
