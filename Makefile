validation: validator metaschema
	ajv -s meta-schema.json              -d abstract-coverage-schema.json
	ajv -s abstract-coverage-schema.json -d examples/project-coverage.json

validator:
	npm install -g ajv-cli

metaschema:
	wget http://json-schema.org/draft-07/schema -O meta-schema.json
