class Post2sController < ApplicationController
  # GET /post2s
  # GET /post2s.json
  def index
    @post2s = Post2.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @post2s }
    end
  end

  # GET /post2s/1
  # GET /post2s/1.json
  def show
    @post2 = Post2.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @post2 }
    end
  end

  # GET /post2s/new
  # GET /post2s/new.json
  def new
    @post2 = Post2.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @post2 }
    end
  end

  # GET /post2s/1/edit
  def edit
    @post2 = Post2.find(params[:id])
  end

  # POST /post2s
  # POST /post2s.json
  def create
    @post2 = Post2.new(params[:post2])

    respond_to do |format|
      if @post2.save
        format.html { redirect_to @post2, notice: 'Post2 was successfully created.' }
        format.json { render json: @post2, status: :created, location: @post2 }
      else
        format.html { render action: "new" }
        format.json { render json: @post2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /post2s/1
  # PUT /post2s/1.json
  def update
    @post2 = Post2.find(params[:id])

    respond_to do |format|
      if @post2.update_attributes(params[:post2])
        format.html { redirect_to @post2, notice: 'Post2 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @post2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post2s/1
  # DELETE /post2s/1.json
  def destroy
    @post2 = Post2.find(params[:id])
    @post2.destroy

    respond_to do |format|
      format.html { redirect_to post2s_url }
      format.json { head :no_content }
    end
  end
end
