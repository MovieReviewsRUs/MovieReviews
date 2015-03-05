Movie.destroy_all

movies = Movie.create([
  {title: 'The Lego Move', total_gross: 257756197, release_date: DateTime.new(2014,2,07,9), mpaa_rating: 'pg', description: 'rate this movie!'},
  {title: '22 Jump Street', total_gross: 191616238, release_date: DateTime.new(2014,6,13,9), mpaa_rating: 'r', description: 'rate this movie!'},
  {title: 'GoneGirl', total_gross: 167735396, release_date: DateTime.new(2014,10,03,9), mpaa_rating: 'r', description: 'rate this movie!'}
  ])

