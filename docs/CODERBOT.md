# CoderBot Usage Guide

## Overview

This repository is integrated with CoderBot, an AI-powered system that automates task management and code generation using specialized AI agents.

## Quick Start

### Creating an Epic

1. Create a new issue
2. Add the `epic` label
3. Include CoderBot instructions in the body:

```markdown
## CoderBot Coordination Instructions

@coderbot please:
- Break down into tasks (max 3 days each)
- Prioritize security tasks first
- Assign appropriate agents
- Create implementation plan
```

4. CoderBot will automatically:
   - Parse the epic
   - Create sub-tasks
   - Assign specialized agents
   - Post a summary

## Available Agents (37 total)

### Development Agents
- `agent:backend-developer` - Server-side development
- `agent:frontend-developer` - UI/UX implementation
- `agent:mobile-developer` - Mobile app development
- `agent:golang-developer` - Go language specialist
- `agent:python-developer` - Python specialist
- `agent:rust-developer` - Rust specialist
- `agent:javascript-developer` - JavaScript specialist
- `agent:typescript-developer` - TypeScript specialist

### Architecture Agents
- `agent:solution-architect` - System design
- `agent:security-architect` - Security design
- `agent:cloud-architect` - Cloud infrastructure
- `agent:application-architect` - Application architecture
- `agent:data-architect` - Data architecture

### AI/ML Agents
- `agent:ai-architect` - AI system design
- `agent:ai-engineer` - AI/ML implementation
- `agent:machine-learning-engineer` - ML engineering

### Specialized Agents
- `agent:api-designer` - API design
- `agent:database-designer` - Database schemas
- `agent:devops-engineer` - CI/CD and deployment
- `agent:test-automation-engineer` - Testing
- `agent:security-engineer` - Security implementation
- `agent:performance-engineer` - Optimization
- `agent:data-engineer` - Data pipelines
- `agent:ux-designer` - User experience

### Code Quality Agents
- `agent:code-reviewer` - Code review
- `agent:code-refactor` - Refactoring
- `agent:code-debugger` - Debugging
- `agent:code-documenter` - Documentation
- `agent:code-security-auditor` - Security audit
- `agent:code-standards-enforcer` - Standards enforcement

### Innovation Agents
- `agent:innovation-catalyst` - Creative solutions
- `agent:constraint-innovator` - Innovation within limits
- `agent:ideation-synthesizer` - Idea synthesis

### Management Agents
- `agent:project-manager` - Project coordination
- `agent:task-orchestrator` - Task management

## Label System

### Hierarchy Labels
- `epic` - Large initiatives
- `story` - User stories
- `task` - Development tasks
- `subtask` - Smaller units

### Phase Labels
- `phase:1-planning` - Planning phase
- `phase:2-design` - Design phase
- `phase:3-implementation` - Implementation
- `phase:4-testing` - Testing
- `phase:5-deployment` - Deployment
- `phase:6-maintenance` - Maintenance

### Priority Labels
- `priority:critical` - P0
- `priority:high` - P1
- `priority:medium` - P2
- `priority:low` - P3

### Size Labels
- `size:xs` - < 2 hours
- `size:s` - 2-8 hours
- `size:m` - 1-3 days
- `size:l` - 3-5 days
- `size:xl` - 1-2 weeks

### Special Instructions
- `needs:breakdown` - Needs task breakdown
- `needs:estimation` - Needs estimation
- `needs:architecture` - Needs design
- `needs:security-review` - Security review
- `auto:execute` - Auto-execute

## Epic Structure Example

```markdown
# [EPIC] User Authentication System

## Overview
Implement complete authentication system with SSO support.

## Phases

### Phase 1: Core Authentication (Week 1-2)
- Basic login/logout
- Password management
- Session handling

### Phase 2: Advanced Features (Week 3-4)
- Multi-factor authentication
- SSO integration
- Role-based access control

## CoderBot Coordination Instructions

@coderbot please:
- Break down each phase into tasks
- Use security-architect for design
- Use backend-developer for APIs
- Use frontend-developer for UI
- Ensure all tasks have tests
```

## Workflow

1. **Epic Creation** → Label with `epic`
2. **Automatic Breakdown** → CoderBot creates tasks
3. **Agent Assignment** → Each task gets an agent
4. **Implementation** → Agents work on tasks
5. **Review** → Code review and testing
6. **Completion** → Task marked complete

## Best Practices

### For Epics
- Be specific about requirements
- Include acceptance criteria
- Specify phases if applicable
- Add CoderBot instructions

### For Tasks
- Keep tasks under 3 days
- One deliverable per task
- Clear success criteria
- Appropriate agent assignment

### For Labels
- Always label epics
- Use phase labels for tracking
- Apply size labels for planning
- Add priority for scheduling

## Configuration Settings

### Task Naming Configuration
The `.coderbot.yml` file includes settings to control how tasks are displayed:

```yaml
tasks:
  use_issue_title: true  # Use issue title for task display names
  task_name_format: "{issue-title}"  # Format for task display names
  fallback_to_event_name: false  # Don't use generic webhook event names
```

**Options:**
- `use_issue_title`: When `true`, uses the GitHub issue title as the task name
- `task_name_format`: Template for task names (supports `{issue-title}`, `{issue-number}`, etc.)
- `fallback_to_event_name`: When `false`, prevents generic names like "Handle issues.opened event"

**Example:** Instead of showing "Handle issues.opened event", CoderBot will display the actual issue title like "InsightsMed Healthcare AI Management Platform".

## Troubleshooting

### CoderBot Not Responding
1. Check if `epic` label is applied
2. Verify CoderBot App is installed
3. Check webhook configuration
4. Ensure proper epic structure

### Tasks Not Created
1. Check epic has CoderBot instructions
2. Verify label permissions
3. Check GitHub API limits

### Wrong Agent Assignment
1. Be specific in task descriptions
2. Use agent labels manually if needed
3. Update task description for clarity

## Commands

### Manual Agent Assignment
Add label: `agent:backend-developer`

### Request Breakdown
Add label: `needs:breakdown`

### Mark for Security Review
Add label: `needs:security-review`

## Support

- Documentation: [README.md](../README.md)
- Issues: Create issue with `bug` label
- CoderBot Status: Check GitHub Actions

---

*CoderBot is continuously learning and improving. Provide feedback through issues.*