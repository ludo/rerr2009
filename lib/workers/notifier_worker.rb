class NotifierWorker < BackgrounDRb::MetaWorker
  set_worker_name :notifier_worker
  def create(args = nil)
    # this method is called, when worker is loaded for the first time
  end
  
  def send_out_emails
    events = Event.all(:conditions => { :processed => false })
    
    events.each do |event|
      applications = event.library.applications
      
      applications.each do |application|
        LibraryMailer.deliver_notification(application.user, event)
        event.update_attribute(:processed, true)
      end
    end
  end
end
