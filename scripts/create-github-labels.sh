#!/bin/bash

# Script to create all necessary GitHub labels for intelligent CoderBot task assignment
# Usage: ./create-github-labels.sh [owner] [repo]

OWNER=${1:-"Generative-Bricks"}
REPO=${2:-"insightsmed-healthcare-ai-mgmt"}

echo "Creating GitHub labels for $OWNER/$REPO"
echo "========================================="

# Color codes for different label categories
COLOR_AGENT="7057ff"      # Purple for agents
COLOR_PHASE="0969da"      # Blue for phases
COLOR_STACK="0e8a16"      # Green for tech stack
COLOR_COMPLIANCE="d73a4a" # Red for compliance
COLOR_SIZE="fbca04"       # Yellow for size
COLOR_PRIORITY="e99695"   # Light red for priority
COLOR_NEEDS="d4c5f9"      # Light purple for needs
COLOR_HIERARCHY="1d76db"  # Blue for hierarchy
COLOR_APPROVAL="FFD700"   # Gold for approval status

# Function to create a label
create_label() {
    local NAME=$1
    local COLOR=$2
    local DESCRIPTION=$3
    
    echo "Creating label: $NAME"
    gh label create "$NAME" --repo "$OWNER/$REPO" --color "$COLOR" --description "$DESCRIPTION" 2>/dev/null || \
    echo "  Label '$NAME' already exists or error occurred"
}

echo ""
echo "Creating Agent Labels (37 total)..."
echo "-----------------------------------"

# Agent labels
create_label "agent:ai-architect" "$COLOR_AGENT" "AI system architecture design"
create_label "agent:ai-engineer" "$COLOR_AGENT" "AI/ML implementation"
create_label "agent:api-designer" "$COLOR_AGENT" "API design and specification"
create_label "agent:application-architect" "$COLOR_AGENT" "Application architecture"
create_label "agent:backend-developer" "$COLOR_AGENT" "Backend development"
create_label "agent:cloud-architect" "$COLOR_AGENT" "Cloud infrastructure design"
create_label "agent:code-debugger" "$COLOR_AGENT" "Debug and fix issues"
create_label "agent:code-documenter" "$COLOR_AGENT" "Documentation creation"
create_label "agent:code-refactor" "$COLOR_AGENT" "Code refactoring"
create_label "agent:code-reviewer" "$COLOR_AGENT" "Code review and quality"
create_label "agent:code-security-auditor" "$COLOR_AGENT" "Security audit"
create_label "agent:code-standards-enforcer" "$COLOR_AGENT" "Code standards enforcement"
create_label "agent:constraint-innovator" "$COLOR_AGENT" "Innovation within constraints"
create_label "agent:data-architect" "$COLOR_AGENT" "Data architecture design"
create_label "agent:data-engineer" "$COLOR_AGENT" "Data pipeline implementation"
create_label "agent:database-designer" "$COLOR_AGENT" "Database schema design"
create_label "agent:devops-engineer" "$COLOR_AGENT" "DevOps and CI/CD"
create_label "agent:frontend-developer" "$COLOR_AGENT" "Frontend development"
create_label "agent:golang-developer" "$COLOR_AGENT" "Go development"
create_label "agent:ideation-synthesizer" "$COLOR_AGENT" "Idea synthesis"
create_label "agent:innovation-catalyst" "$COLOR_AGENT" "Innovation and creativity"
create_label "agent:ios-developer" "$COLOR_AGENT" "iOS development"
create_label "agent:javascript-developer" "$COLOR_AGENT" "JavaScript development"
create_label "agent:machine-learning-engineer" "$COLOR_AGENT" "ML engineering"
create_label "agent:mobile-developer" "$COLOR_AGENT" "Mobile development"
create_label "agent:performance-engineer" "$COLOR_AGENT" "Performance optimization"
create_label "agent:project-manager" "$COLOR_AGENT" "Project management"
create_label "agent:python-developer" "$COLOR_AGENT" "Python development"
create_label "agent:rust-developer" "$COLOR_AGENT" "Rust development"
create_label "agent:security-architect" "$COLOR_AGENT" "Security architecture"
create_label "agent:security-engineer" "$COLOR_AGENT" "Security implementation"
create_label "agent:solution-architect" "$COLOR_AGENT" "Solution architecture"
create_label "agent:task-orchestrator" "$COLOR_AGENT" "Task orchestration"
create_label "agent:test-automation-engineer" "$COLOR_AGENT" "Test automation"
create_label "agent:typescript-developer" "$COLOR_AGENT" "TypeScript development"
create_label "agent:ux-designer" "$COLOR_AGENT" "UX design"
create_label "agent:wordpress-developer" "$COLOR_AGENT" "WordPress development"

echo ""
echo "Creating Hierarchy Labels..."
echo "----------------------------"

# Hierarchy labels (epic and task already exist)
create_label "story" "$COLOR_HIERARCHY" "User story"
create_label "subtask" "$COLOR_HIERARCHY" "Subtask of a larger task"

echo ""
echo "Creating Phase Labels..."
echo "-----------------------"

# Phase labels
create_label "phase:1-planning" "$COLOR_PHASE" "Planning phase"
create_label "phase:2-design" "$COLOR_PHASE" "Design phase"
create_label "phase:3-implementation" "$COLOR_PHASE" "Implementation phase"
create_label "phase:4-testing" "$COLOR_PHASE" "Testing phase"
create_label "phase:5-deployment" "$COLOR_PHASE" "Deployment phase"
create_label "phase:6-maintenance" "$COLOR_PHASE" "Maintenance phase"

echo ""
echo "Creating Technology Stack Labels..."
echo "----------------------------------"

# Stack labels
create_label "stack:python" "$COLOR_STACK" "Python technology"
create_label "stack:nodejs" "$COLOR_STACK" "Node.js technology"
create_label "stack:react" "$COLOR_STACK" "React framework"
create_label "stack:postgresql" "$COLOR_STACK" "PostgreSQL database"
create_label "stack:docker" "$COLOR_STACK" "Docker containerization"
create_label "stack:kubernetes" "$COLOR_STACK" "Kubernetes orchestration"
create_label "stack:ai-ml" "$COLOR_STACK" "AI/ML technology"

echo ""
echo "Creating Compliance/Domain Labels..."
echo "------------------------------------"

# Compliance labels
create_label "compliance:hipaa" "$COLOR_COMPLIANCE" "HIPAA compliance required"
create_label "compliance:phi" "$COLOR_COMPLIANCE" "PHI data handling"
create_label "domain:healthcare" "$COLOR_COMPLIANCE" "Healthcare domain"
create_label "domain:financial" "$COLOR_COMPLIANCE" "Financial domain"
create_label "domain:analytics" "$COLOR_COMPLIANCE" "Analytics domain"

echo ""
echo "Creating Size Labels..."
echo "----------------------"

# Size labels
create_label "size:xs" "$COLOR_SIZE" "< 2 hours"
create_label "size:s" "$COLOR_SIZE" "2-8 hours"
create_label "size:m" "$COLOR_SIZE" "1-3 days"
create_label "size:l" "$COLOR_SIZE" "3-5 days"
create_label "size:xl" "$COLOR_SIZE" "1-2 weeks"

echo ""
echo "Creating Priority Labels..."
echo "--------------------------"

# Priority labels
create_label "priority:critical" "$COLOR_PRIORITY" "P0 - Critical priority"
create_label "priority:high" "$COLOR_PRIORITY" "P1 - High priority"
create_label "priority:medium" "$COLOR_PRIORITY" "P2 - Medium priority"
create_label "priority:low" "$COLOR_PRIORITY" "P3 - Low priority"

echo ""
echo "Creating Special Instruction Labels..."
echo "--------------------------------------"

# Special instruction labels
create_label "needs:breakdown" "$COLOR_NEEDS" "Needs task breakdown"
create_label "needs:estimation" "$COLOR_NEEDS" "Needs effort estimation"
create_label "needs:architecture" "$COLOR_NEEDS" "Needs architectural design"
create_label "needs:security-review" "$COLOR_NEEDS" "Needs security review"
create_label "auto:execute" "$COLOR_NEEDS" "Auto-execute when labeled"

echo ""
echo "Creating Approval Status Labels..."
echo "----------------------------------"

# Approval status labels
create_label "plan:pending-approval" "$COLOR_APPROVAL" "Project plan awaiting approval"
create_label "plan:approved" "$COLOR_APPROVAL" "Project plan approved"
create_label "plan:rejected" "$COLOR_APPROVAL" "Project plan rejected"
create_label "plan:needs-revision" "$COLOR_APPROVAL" "Project plan needs revision"

echo ""
echo "========================================="
echo "Label creation complete!"
echo ""
echo "Summary:"
echo "- 37 agent-specific labels"
echo "- 2 hierarchy labels"
echo "- 6 phase labels"
echo "- 7 technology stack labels"
echo "- 5 compliance/domain labels"
echo "- 5 size labels"
echo "- 4 priority labels"
echo "- 5 special instruction labels"
echo "- 4 approval status labels"
echo ""
echo "Total: 75 labels created/verified"
echo ""
echo "You can now use these labels to:"
echo "1. Label epics with 'epic' to trigger breakdown"
echo "2. Assign agents with 'agent:xxx' labels"
echo "3. Track phases with 'phase:x' labels"
echo "4. Specify requirements with other labels"