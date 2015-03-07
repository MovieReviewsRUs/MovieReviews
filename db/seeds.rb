Movie.destroy_all

movies = Movie.create([
  {title: 'The Lego Movie', total_gross: 257756197, release_date: DateTime.new(2014,2,07,9), mpaa_rating: 'PG', description: 'rate this movie!'},
  {title: '22 Jump Street', total_gross: 191616238, release_date: DateTime.new(2014,6,13,9), mpaa_rating: 'R', description: 'rate this movie!'},
  {title: 'Gone Girl', total_gross: 167735396, release_date: DateTime.new(2014,10,03,9), mpaa_rating: 'R', description: 'rate this movie!'}
  ])

movies[0].reviews << Review.create([
    {author: "Brandon", comment: "pretty awesome", star_rating: 5}
  ])
movies[1].reviews << Review.create([
    {author: "Pat", comment: "pretty funny", star_rating: 5}
  ])
movies[2].reviews << Review.create([
    {author: "Helen", comment: "pretty intense", star_rating: 5}
  ])
