class ProjectsController < ApplicationController
  load_and_authorize_resource
  layout "single_page", :except => [:index]
  SORT_ORDER = 'sequence ASC, launch_date DESC'

  # GET /projects
  def index
    @ror_projects       = Project.ror.order(SORT_ORDER)
    @spree_projects     = Project.spree.order(SORT_ORDER)
    @shopify_projects   = Project.shopify.order(SORT_ORDER)
    @html_projects      = Project.html.order(SORT_ORDER)
    @featured_projects  = Project.featured.order(SORT_ORDER)
    @message = Message.new
    render :layout => 'layouts/multi_page'
  end

  # GET /projects/1
  def show
  end

  # GET /projects/new
  def new
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  def create
    if @project.save
      redirect_to @project, notice: 'Project was successfully created.'
    else
      render action: "new"
    end
  end

  # PUT /projects/1
  def update
    if @project.update_attributes(params[:project])
      redirect_to @project, notice: 'Project was successfully updated.'
    else
      render action: "edit"
    end
  end

  # DELETE /projects/1
  def destroy
    @project.destroy

    redirect_to projects_url
  end

  def send_mail
    @message = Message.new(params[:message])

    if @message.valid?
    authorize! :send_mail, NotificationsMailer.new_message(@message).deliver
      redirect_to(root_path, :notice => "Message was successfully sent.")
    else
      flash.now.alert = 'There was an error submitting your message. <a href="#contact">View the contact form</a> for more information.'.html_safe
      render :action => :index, :layout => 'layouts/multi_page'
    end
  end
end
