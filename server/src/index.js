import path from "path";
import express from "express";
import registerAPIs from "./api";

const PORT = process.env.PORT ?? 3000;
const app = express();

registerAPIs(app);

if (process.env.NODE_ENV === "production") {
  app.use(express.static(path.join(__dirname, "client")));
} else {
  const ParcelBundler = require("parcel-bundler");
  const bundler = new ParcelBundler(path.join(__dirname, "../../client/public/index.html"), {
    outDir: "./dist/client",
  });
  app.use(bundler.middleware());
}

export default app.listen(PORT);
