# Next.js Chrome/Firefox Extension

This builds the Next project as a Chrome and Firefox compatible browser
extension.

- Renames `/_next` in exports to `/assets` to prevent Chrome errors
- Builds an extension to `extension.zip` in the root directory

## Getting Started

### Exporting

Use the `export` script to build and export the project as a browser extension
in `out/` and bundle into `extension.zip`:

```
yarn export
```

### Developing

You should develop your application in the browser for the most straightforward
development experience.

#### In extension popup

Use `yarn export` to update the output in `out/` and test in the extension popup
as needed. Then, you can load this as a Chrome extension:

  1. Go to [`chrome://extensions`](chrome://extensions)
  2. Set **Developer Mode** to **ON** in the top-right corner
  3. Click the **Load Unpacked** extension
  4. View the popup by clicking the **Extensions** puzzle piece to the right of
     the URL field and click the name of your new extension.
  5. Optionally, pin the extension to your home bar for easier access.

#### In browser

First, run the development server:

```bash
npm run dev
# or
yarn dev
```

Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

You can start editing the page by modifying `pages/index.tsx`. The page auto-updates as you edit the file.

[API routes](https://nextjs.org/docs/api-routes/introduction) can be accessed on [http://localhost:3000/api/hello](http://localhost:3000/api/hello). This endpoint can be edited in `pages/api/hello.tsx`.

The `pages/api` directory is mapped to `/api/*`. Files in this directory are treated as [API routes](https://nextjs.org/docs/api-routes/introduction) instead of React pages.

## Learn More

To learn more about Next.js, take a look at the following resources:

- [Next.js Documentation](https://nextjs.org/docs) - learn about Next.js features and API.
- [Learn Next.js](https://nextjs.org/learn) - an interactive Next.js tutorial.

You can check out [the Next.js GitHub repository](https://github.com/vercel/next.js/) - your feedback and contributions are welcome!

## Deploy on Vercel

The easiest way to deploy your Next.js app is to use the [Vercel Platform](https://vercel.com/new?utm_medium=default-template&filter=next.js&utm_source=create-next-app&utm_campaign=create-next-app-readme) from the creators of Next.js.

Check out our [Next.js deployment documentation](https://nextjs.org/docs/deployment) for more details.
