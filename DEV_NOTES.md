# Development Planning

## Models

### Series

Model containing a list of Series (Ie TOS, TNG etc)

* each Series Has Many Seasons

### Season

Model listing Seasons ('Season 1', 'Season 2' etc) for A Series

* each Season Belongs to a Series and Has Many Episodes

### Episode

Model listing data for each individual episode.

* each episode Belongs to a Season
