export default {
    extends: ['@commitlint/config-conventional'],
    rules: {
        'type-enum': [2, 'always', ['build', 'chore', 'ci', 'feat', 'fix', 'test']],
        'scope-enum': [2, 'always', ['repo', 'frontend', 'backend', 'e2e']],
        'scope-empty': [2, 'never']
    }
}
