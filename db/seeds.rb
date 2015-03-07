Movie.destroy_all

movies = Movie.create!([
  {title: 'The Lego Movie', total_gross: 257756197, release_date: DateTime.new(2014,2,07,9), mpaa_rating: 'PG', description: 'An ordinary Lego construction worker, thought to be the prophesied "Special", is recruited to join a quest to stop an evil tyrant from gluing the Lego universe into eternal stasis.'},
  {title: '22 Jump Street', total_gross: 191616238, release_date: DateTime.new(2014,6,13,9), mpaa_rating: 'R', description: 'After making their way through high school (twice), big changes are in store for officers Schmidt and Jenko when they go deep undercover at a local college.'},
  {title: 'Gone Girl', total_gross: 167735396, release_date: DateTime.new(2014,10,03,9), mpaa_rating: 'R', description: "With his wife's disappearance having become the focus of an intense media circus, a man sees the spotlight turned on him when it's suspected that he may not be innocent."}
  ])

movies[0].reviews << Review.create!([
    {author: "Brandon", comment: "pretty awesome", star_rating: 5}
  ])
movies[1].reviews << Review.create!([
    {author: "Pat", comment: "pretty funny", star_rating: 5}
  ])
movies[2].reviews << Review.create!([
    {author: "Helen", comment: "pretty intense", star_rating: 5}
  ])
