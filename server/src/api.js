function registerAPIs(app) {
  app.use(express.urlencoded({ extended: true }));
  app.use(express.json());

  app.use("/api", (_req, res) => {
    res.send({ hello: "world" });
  });
}

export default registerAPIs;
