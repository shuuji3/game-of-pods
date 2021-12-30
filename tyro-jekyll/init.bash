#!/usr/bin/env bash
k config set-credentials drogo --client-certificate=/root/drogo.crt --client-key=/root/drogo.key
k config set-context developer --user=drogo --cluster=kubernetes --namespace=development
k config use-context developer
