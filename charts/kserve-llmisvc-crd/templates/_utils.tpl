{{/*
Safe namespace replacement - only replaces exact "namespace: kserve" pattern.
Used for CRD conversion webhook clientConfig and cert-manager annotation.
*/}}
{{- define "kserve-common.replaceNamespace" -}}
{{- $content := index . 0 -}}
{{- $namespace := index . 1 -}}
{{- $pattern := "namespace: kserve\n" -}}
{{- $replacement := printf "namespace: %s\n" $namespace -}}
{{- $content | replace $pattern $replacement -}}
{{- end -}}
