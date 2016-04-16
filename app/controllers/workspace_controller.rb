class WorkspaceController < ApplicationController
  def index
    render :index
  end

  def name
    render :name
  end

  def colors
    render :colors
  end

  def visibility
    render :visibility
  end

  def headings
    render :headings
  end

  def delete_all
    render :delete_all
  end

  def clicks
    render :clicks
  end
end
