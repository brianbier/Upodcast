# What I am building?

I am building a podcast site. You can create a podcast with multiple episodes.

**Live** [Blogger Site](https://mysterious-brushlands-82953.herokuapp.com/)

##Technologies

- [devise gem](https://github.com/plataformatec/devise)( Flexible and powerful authentication solution for Rails)
- [paperclip gem](https://github.com/thoughtbot/paperclip)( Easy upload management for ActiveRecord)
- [jPlayer package](https://github.com/happyworm/jplayer/)( Play and control media files in your webpage.)
- [will_paginate gem](https://github.com/mislav/will_paginate/wiki)( will_paginate provides a simple API for performing paginated queries with Active Record)

##Who am I building it for?
I am building the site for people who dont know where to start a podcast and want to begin their journey.


##What features do I want to have?

    - User sign up, sign in / out
    - authenticate so that user can only access their own content
    - Crud (Create update Read Destroy) for podcast episodes
    - Image uploading
    - Mp3 uploading
    - Store assets on amazon s3
    - Host the site on heroku

## User Stories

- As a user I want to be able to explorer/ discover new
podcasts so that I can find new stuff to listen too.
- As a user I want to be able to sign up and create a podcast, so that my audience can listen to my podcast episodes.
- As a user I want to be able to listen to podcasts.
- As an authorized user, I want to be able to sign in or out so that I can access my account.
- As a authorized user, I want to be able to edit or delete my podcast episodes so that I can manage my podcasts
- As an authorized user, I want to be able to add images to my podcast episodes, so that each episode can be uniquely recognized.
- As a authorized user, I want to be able to upload mp3s.

##Data Modeling

**Podcast Model** 
has_many episodes

-attributes
     - email
     - password
     - title
     - description
     - thumbnail
     - Episode
     - iTunes link
     - sticker link
     - podbay link

**Episode Model**
belongs to podcast
 
-attributes
     - titles
     - description
     - podcast id
     - thumbnail
     - mp3

## Pages I'll need to build the app

- welcome page (welcome#index)
- Sign In page (session#new)
- Sign up page (registration#new)
- Podcast index page (podcasts#index)
- Podcast show page (podcasts#show)
- Podcast edit page (podcasts#edit)
- Episode show page (episodes#show)
- Episode New page (episode#new)
- Episode Edit page (episodes#edit)
- Dashboard page (Podcasts#dashboard)
