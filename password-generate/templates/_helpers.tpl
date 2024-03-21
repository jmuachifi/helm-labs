{{/*_helpers.tpl*/}}
{{/* Create our tags */}}
{{- define "app.labels" -}}
app: {{ .labels.app | quote }}
env: {{ .labels.env | quote }}
live: {{ .labels.live | quote }}
{{- end }}

{{/* Defining the resources limits */}}
{{- define "app.resources" -}}
requests:
    memory: {{ .resources.requests.memory}}
    cpu: {{ .resources.requests.cpu}}
{{- end}}

{{/* Defining containers ports*/}}
{{- define "app.ports" -}}
{{ range .ports}}
- containerPort: {{ .port }}
{{- end }}
{{- end }}

{{/* Defining our configmaps*/}}
{{- define "database.configmap" -}}
apiVersion: v1
kind: ConfigMap
metadata:
    name: {{ .component}}-db-config
data:
    app-config.yaml: | 
        {{- toYaml .config | nindent 4 }}
{{- end }}

{{/* Defining our configmaps*/}}
{{- define "observability.configmap" -}}
apiVersion: v1
kind: ConfigMap
metadata:
    name: {{ .component }}-observability-config
data:
    app-config.json: | 
        {{ toJson .config}}
{{- end }}