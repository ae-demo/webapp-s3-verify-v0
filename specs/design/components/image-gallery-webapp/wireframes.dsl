screen Gallery "The signed-in user's previously uploaded images"
  navbar "Image Gallery"
  sidebar "My Gallery -> Gallery"
  row
    heading "My Images"
    right
    button "Upload Image" primary -> Upload
  table "Preview | File name | Uploaded"
    row "🖼 | sunset.jpg | 2026-09-10 -> ImageDetail"
    row "🖼 | team-photo.png | 2026-09-12 -> ImageDetail"
    row "🖼 | receipt.jpg | 2026-09-18 -> ImageDetail"

screen Upload "Pick a file and upload it to the gallery"
  navbar "Image Gallery"
  sidebar "My Gallery -> Gallery"
  card "New Image"
    input "Choose file"
    text "Supported: JPG, PNG, GIF"
    row
      right
      button "Cancel" -> Gallery
      button "Upload" primary -> Gallery

screen ImageDetail "A single uploaded image at full size"
  navbar "Image Gallery"
  sidebar "My Gallery -> Gallery"
  breadcrumb "My Gallery / Image"
  image "Full-size image" 600x400
  row
    text "File name: sunset.jpg"
    right
    button "Back to Gallery" -> Gallery

flow "Upload and view my images"
  role "User"
  description "A signed-in user uploads a new image and browses their own gallery"
  Gallery
  Upload
  ImageDetail
