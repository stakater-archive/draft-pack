{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "<app_name>" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "<app_name>.labels.selector" -}}
app: {{ template "<app_name>.name" . }}
group: {{ .Values.appname.labels.group }}
provider: {{ .Values.appname.labels.provider }}
{{- end -}}

{{- define "<app_name>.labels.stakater" -}}
{{ template "<app_name>.labels.selector" . }}
version: "{{ .Values.appname.labels.version }}"
{{- end -}}

{{- define "<app_name>.labels.chart" -}}
chart: "{{ .Chart.Name }}-{{ .Chart.Version }}"
release: {{ .Release.Name | quote }}
heritage: {{ .Release.Service | quote }}
{{- end -}}
