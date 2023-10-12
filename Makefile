.PHONY: CHECK-PR
CHECK-PR:
	docker pull ghcr.io/chovin/test_github_actions:pr-$(PR)
	export TAG=pr-$(PR) docker compose -f docker/production/docker-compose.yml up
