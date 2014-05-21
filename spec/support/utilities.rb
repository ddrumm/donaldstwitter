def full_title(page_title)
  base_title = "Donalds Fancy Twitterclone App"
  if page_title.empty?
    base_title
  else
    "#{base_title} | #{page_title}"
  end
end