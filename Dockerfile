ARG ELASTICSEARCH_VERSION
ARG VIETNAMESE_ANALYSIS_VERSION

FROM elasticsearch:${ELASTICSEARCH_VERSION}

ARG ELASTICSEARCH_VERSION

RUN elasticsearch-plugin install --batch https://github.com/sun-asterisk-research/elasticsearch-analysis-vi/releases/download/v${VIETNAMESE_ANALYSIS_VERSION}/analysis-vi-${VIETNAMESE_ANALYSIS_VERSION}-es${ELASTICSEARCH_VERSION}.zip
