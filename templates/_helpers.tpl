{{- define "terraform.image" -}}
{{ .Values.image.repository }}/{{ .Values.image.name }}:{{ .Values.image.tag }}
{{- end -}}
