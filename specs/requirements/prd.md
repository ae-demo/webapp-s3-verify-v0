# Image Upload &amp; Gallery — PRD

## Problem Statement

People need a simple, no-fuss place to store images they've uploaded and get back to them later, without digging through email attachments, chat threads, or shared drives that were never meant for casual image storage. Today there's no lightweight, personal place to drop an image and find it again.

## Solution

A simple web application where a signed-in user can upload images and browse the images they have previously uploaded. Each user's uploads are private to them — there is no sharing or cross-user visibility. The experience is intentionally minimal: sign in, upload, view.

## Actors

- **User** — a signed-in individual who can upload images and view the gallery of images they personally have uploaded. All users have identical capabilities; there is no elevated or administrative role.

## User Stories

1. As a User, I want to sign in to the application, so that my uploads are kept private to me.
2. As a User, I want to upload an image, so that it is stored and available for me to view later.
3. As a User, I want to see a gallery of all the images I have previously uploaded, so that I can find and view them again.
4. As a User, I want to view an individual uploaded image at full size, so that I can see its detail beyond a thumbnail.

## Product Decisions

- **Sign-in**: every user signs in via SSO through Thunder, the platform IDP, before they can upload or view any images. *(org default)*
- **Image storage**: images are stored in Amazon S3 (the `aws-s3` registered resource); the browser uploads and downloads directly against S3 via short-lived presigned URLs, never through the application backend. *(org default given)*
- **Visibility scope**: uploaded images are private per user — a user only ever sees images they personally uploaded, never another user's images.
- **Roles**: a single actor type; no administrative role exists in this product.

## Out of Scope

- Sharing an image, or any image, with another user or the public.
- Editing, cropping, or otherwise transforming an uploaded image.
- Deleting or replacing an uploaded image.
- Organizing images into albums, folders, or tags.
- Commenting, liking, or any social interaction around images.

## Open Questions

None at this time.

