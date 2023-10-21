---
title: The ultimate Open Source resume builder
description: Create, manage, and share your resume effortlessly with Reactive Resume, a free and open source tool that prioritizes user privacy and customization.
date: 2022-11-19T14:33:00.120Z
image: emma_brener-cv_v1_rxresume_kelvin-wuite_kelvin.id.png
image_alt: Emma Brener cv on cv.kelvin.id
comments: true
license: MIT
math: false
toc: true
style:
  background: "#FFFFFF"
  color: "#000000"
keywords:
  - blog
  - post
readingTime: true
categories:
  - Freelancer
  - Career Development
  - CV
  - Resume
tags:
  - Reactive Resume
  - Open Source
  - Privacy-Focused
  - Multi-language
  - Self-Hosted
  - Career Tools
type: post
---

Reactive Resume is a free and open source resume builder which was created to simplify the tedious tasks of generating, updating, and publishing your resume as simple as possible. With this software, you can make several resumes, send them to employers or friends via a special URL, and print them as PDFs all for free without having to worry about your data being compromised or sold to any commercial entity via monitoring or analytical tools.

You have complete control over everything that goes into your curriculum vitae, including the layout, colors, templates, and placement of the various parts. Want a cv in dark mode? Three values simply need to be changed, and you're done. You do not need to wait to observe the changes. Everything you submit and alter appears instantly and is updated in real time on your cv.

## Features

- Free forever
- Zero advertisements
- No User Tracking or any form of analytics
- Sync your data across devices
- Accessible in 40 languages (as of writing)
- Import data from [LinkedIn](https://www.linkedin.com/mypreferences/d/download-my-data), [JSON Resume](https://jsonresume.org/)
- Manage multiple resumes with one account
- Open Source (with large community support)
  - The source code is hosted on [Github](https://github.com/AmruthPillai/Reactive-Resume)
  - For questions check the [Issues](https://github.com/AmruthPillai/Reactive-Resume/issues)
- Send your resume to others with a unique sharable link
- Pick any [font from Google](https://fonts.google.com/featured) to use on your resume
- Choose from 6 vibrant templates and more coming soon
- Export your resume to JSON or PDF format with just one click
- Create an account using your email, or just Sign in with [Google](https://www.npmjs.com/package/@react-oauth/google)
- Mix and match colors to any degree, even a dark mode resume?
- Add sections, add pages and change layouts the way you want to
- Tailor-made Backend and Database, isolated from Google, Amazon etc.

## The creator

[Amruth Pillai](https://www.amruthpillai.com/) created and published the service at [rxresu.me](https://rxresu.me/)

You can support or sponsor Amruth via [Github](https://github.com/sponsors/AmruthPillai) or [PayPal](https://paypal.me/RajaRajanA).

Are you more of a linguist than sponsor by creditcard, you can put your vocabulary and grammar skills to good use and help [translate this tool](https://translate.rxresu.me/) into more languages.

## Infrastructure
- [Next.js](https://nextjs.org/), frontend
- [NestJS](https://nestjs.com/), backend
- [PostgreSQL](https://www.postgresql.org/), database
- [DigitalOcean](https://www.digitalocean.com/), infrastructure provider
- [Crowdin](https://translate.rxresu.me/), translation management platform

## Self hosted solution

A basic [docker-compose](https://github.com/AmruthPillai/Reactive-Resume/blob/main/docker-compose.yml) file is available for hosting your own solution.

I will update the docker-compose file with my own version for releasing this on a Hetzner server with environment management and simple Makefile orchestration including automated SSL.
