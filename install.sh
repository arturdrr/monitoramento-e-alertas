#!/bin/bash
set -e

REPO_NAME="monitoramento-e-alertas"

echo "Iniciando instalação do repositório: $REPO_NAME"

check_command() {
  command -v "$1" >/dev/null 2>&1 || {
    echo >&2 "Erro: '$1' não encontrado. Por favor, instale e execute novamente."
    exit 1
  }
}

echo "Verificando dependências básicas..."
check_command git
check_command curl
check_command docker # Para Prometheus/Grafana em containers
check_command promtool # Ferramenta CLI do Prometheus
check_command grafana-cli # Ferramenta CLI do Grafana

echo "Configurando ambiente de monitoramento..."

# Exemplo: Copiar configurações de exemplo
# cp prometheus/prometheus.yml.example /etc/prometheus/prometheus.yml
# cp grafana/datasources/example-datasource.yaml /etc/grafana/provisioning/datasources/

echo "Instalação do $REPO_NAME concluída."
