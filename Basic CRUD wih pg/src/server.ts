import app from "./app";
import config from "./Config/config";

app.listen(config.port, () => {
  console.log(`Example app listening on port ${config.port}`);
});
