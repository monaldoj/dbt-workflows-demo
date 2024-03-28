SELECT artists, SUM(popularity) / COUNT(popularity) as avg_popularity
FROM {{ ref('popularity') }}
WHERE popularity != 0
GROUP BY artists
ORDER BY avg_popularity DESC