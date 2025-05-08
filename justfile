ls:
  rclone tree secret:

backup file:
  rclone copy "{{file}}" secret: --progress

get file:
  rclone copy "secret:{{file}}" "{{file}}" --progress

rm file:
  rclone delete "secret:{{file}}"
