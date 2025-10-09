{{- define "timescaledb.name" -}}
{{ .Chart.Name }}
{{- end }}

{{- define "timescaledb.fullname" -}}
{{ include "timescaledb.name" . }}-{{ .Release.Name }}
{{- end }}