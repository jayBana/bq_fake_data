#!/bin/bash

npm run-script build
cp ./dist/main.js ./udf_lib/bq_fake.js
cat <<EOT >> ./udf_lib/bq_fake.js


function getFaker() {
  return fakerbq.GetFaker();
}
EOT
