#!/bin/bash
kubectl apply -f jenkins-namespace.yaml
kubectl apply -f jenkins-volume.yaml
kubectl apply -f jenkins-sa.yaml
helm upgrade jenkins -n jenkins -f jenkins-values.yaml jenkinsci/jenkins