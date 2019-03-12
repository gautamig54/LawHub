class PagesController < ApplicationController
  # layout 'page', only: [:show, :edit]
  before_action :set_page, only: [:show, :edit, :update, :destroy, :undo_link]

  # GET /pages
  # GET /pages.json
  def index
    @page = Page.all
    if params[:search]
      @pages = Page.search(params[:search]).order("created_at DESC")
    else
      @pages = Page.all.order("created_at DESC")
    end
  end



  def undo_link
    view_context.link_to("undo", revert_version_path(@page.versions.last), :method => :post)
    render status: 200
  end

  # GET /pages/1
  # GET /pages/1.json
  def show
  end

  # GET /pages/new
  def new
    @page = Page.new
  end

  # GET /pages/1/edit
  def edit
  end

  # POST /pages
  # POST /pages.json
  def create
    @page = Page.new(page_params)

    respond_to do |format|
      if @page.save
        format.html { redirect_to @page, notice: 'Page was successfully created.' }
        format.json { render :show, status: :created, location: @page }
      else
        format.html { render :new }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pages/1
  # PATCH/PUT /pages/1.json
  def update
    respond_to do |format|
      if @page.update(page_params)
        format.html { redirect_to @page, notice: 'Page was successfully updated.' }
        format.json { render :show, status: :ok, location: @page }
      else
        format.html { render :edit }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pages/1
  # DELETE /pages/1.json
  def destroy
    @page.destroy
    respond_to do |format|
      format.html { redirect_to pages_url, notice: 'Page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def criminal
    @page = Page.all
    if params[:search]
      @pages = Page.search(params[:search]).order("created_at DESC")
    else
      @pages = Page.all.order("created_at DESC")
    end
  end

  def civil
    @page = Page.all
    if params[:search]
      @pages = Page.search(params[:search]).order("created_at DESC")
    else
      @pages = Page.all.order("created_at DESC")
    end
  end

  def constitutional
    @page = Page.all
    if params[:search]
      @pages = Page.search(params[:search]).order("created_at DESC")
    else
      @pages = Page.all.order("created_at DESC")
    end
  end

  def education
    @page = Page.all
    if params[:search]
      @pages = Page.search(params[:search]).order("created_at DESC")
    else
      @pages = Page.all.order("created_at DESC")
    end
  end

  def entertainment
    @page = Page.all
    if params[:search]
      @pages = Page.search(params[:search]).order("created_at DESC")
    else
      @pages = Page.all.order("created_at DESC")
    end
  end

  def environmental
    @page = Page.all
    if params[:search]
      @pages = Page.search(params[:search]).order("created_at DESC")
    else
      @pages = Page.all.order("created_at DESC")
    end
  end

  def property
    @page = Page.all
    if params[:search]
      @pages = Page.search(params[:search]).order("created_at DESC")
    else
      @pages = Page.all.order("created_at DESC")
    end
  end

  def income_tax
    @page = Page.all
    if params[:search]
      @pages = Page.search(params[:search]).order("created_at DESC")
    else
      @pages = Page.all.order("created_at DESC")
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page
      @page = Page.find_by_slug!(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def page_params
      params.require(:page).permit(:title, :body, :slug, :category, :views)
    end
end
