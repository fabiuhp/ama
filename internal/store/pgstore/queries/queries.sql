-- name: GetRoom :one
SELECT "id", "theme" from rooms where id = $1;