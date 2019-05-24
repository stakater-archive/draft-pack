CHART_NAME ?= {REPLACE_ME_APP_NAME}
NAMESPACE_NAME ?= {REPLACE_ME_NAMESPACE_NAME}
RELEASE_NAME ?= $(NAMESPACE_NAME)-$(CHART_NAME)

install-chart:
	helm repo add stakater https://stakater.github.io/stakater-charts
	helm upgrade --install --wait --force $(RELEASE_NAME) stakater/application --namespace $(NAMESPACE_NAME)  || (helm rollback --force $(RELEASE_NAME) 0 ; exit 1)

delete-chart:
	helm del --purge $(RELEASE_NAME)