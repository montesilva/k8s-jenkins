#!/bin/bash
kubectl apply -f jenkins-namespace.yaml
kubectl apply -f jenkins-volume.yaml
kubectl apply -f jenkins-sa.yaml
kubectl apply -f jenkins-ingress.yaml
helm repo add jenkinsci https://charts.jenkins.io
helm repo update
helm install jenkins -n jenkins -f jenkins-values.yaml jenkinsci/jenkins