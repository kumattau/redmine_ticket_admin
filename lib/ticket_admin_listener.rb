class TicketAdminListener < Redmine::Hook::ViewListener
  def view_layouts_base_html_head(context)
    stylesheet_link_tag(
      'ticket_admin',
      :plugin => 'redmine_ticket_admin'
    )
  end
  def view_issues_show_details_bottom(context)
    user = context[:issue].author
    time = context[:issue].created_on
    @project = context[:issue].project
  end
  def view_issues_history_journal_bottom(context)
    user = context[:journal].user
    time = context[:journal].created_on
    @project = context[:journal].journalized.project
  end
end
