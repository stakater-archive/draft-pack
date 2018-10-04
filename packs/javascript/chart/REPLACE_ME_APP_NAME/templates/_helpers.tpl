{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "REPLACE_ME_APP_NAME" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "REPLACE_ME_APP_NAME.labels.selector" -}}
app: {{ template "REPLACE_ME_APP_NAME.name" . }}
group: {{ .Values.labels.group }}
provider: {{ .Values.labels.provider }}
{{- end -}}

{{- define "REPLACE_ME_APP_NAME.labels.stakater" -}}
{{ template "REPLACE_ME_APP_NAME.labels.selector" . }}
version: "{{ .Values.labels.version }}"
{{- end -}}

{{- define "REPLACE_ME_APP_NAME.labels.chart" -}}
chart: "{{ .Chart.Name }}-{{ .Chart.Version }}"
release: {{ .Release.Name | quote }}
heritage: {{ .Release.Service | quote }}
{{- end -}}
