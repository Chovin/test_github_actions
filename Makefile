.PHONY: check-pr
check-pr:
	docker pull ghcr.io/chovin/test_github_actions:pr-$(pr)
	# run in subshell to not dirty environment
	(export TAG="pr-$(pr)"; docker compose -f docker/production/docker-compose.yml up)
