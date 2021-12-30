#!/usr/bin/env bash
k exec -it redis-cluster-0 -- redis-cli --cluster create --cluster-replicas 1 "$(k get po -l app=redis-cluster -o jsonpath='{range.items[*]}{.status.podIP}:6379 ')"
