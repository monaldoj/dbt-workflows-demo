{{ config(
  materialized='table',
  file_format='delta'
) }}

SELECT artists, album_name, track_name, popularity
FROM dbtdemo.spotify_tracks