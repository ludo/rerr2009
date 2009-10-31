class LibraryObserver < ActiveRecord::Observer
  def after_update(library)
    library.events.create(:subject => "released new version #{library.version}", :source => library.homepage) if library.version_changed?
  end
end
