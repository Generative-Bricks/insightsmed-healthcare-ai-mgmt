# Claude AI Context

This document provides context about this project for Claude AI and CoderBot agents.

## Project Overview

InsightsMed Healthcare AI Management Platform - A comprehensive suite of AI-powered tools for healthcare business management, including:
- **Contract Analysis Tool ("Golden Grid")**: AI-powered extraction of critical contract data
- **Denials Analysis Dashboard**: Real-time tracking and analysis of claim denials
- **KPI Dashboard**: Comprehensive 12-month rolling metrics and performance indicators

## Technical Stack

- **Framework**: Next.js 14+ with App Router (Vercel optimized)
- **Backend**: Node.js with API Routes, Edge Functions, tRPC
- **Frontend**: React 18+, TypeScript, Tailwind CSS, shadcn/ui
- **Database**: PostgreSQL with Prisma ORM (Vercel Postgres or Supabase)
- **AI/ML**: OpenAI GPT-4, LangChain, Vector DB (Pinecone)
- **Infrastructure**: Vercel (serverless), Edge Runtime
- **Authentication**: NextAuth.js with MFA support
- **Analytics**: Recharts, Tremor for data visualization

## Architecture

- **Deployment**: Vercel with automatic CI/CD
- **API Design**: RESTful APIs with optional GraphQL, tRPC for type-safe APIs
- **State Management**: Zustand or Redux Toolkit
- **File Storage**: Vercel Blob Storage or AWS S3
- **Caching**: Vercel Edge Cache, Redis for session management
- **Search**: Algolia or Elasticsearch for contract search
- **Monitoring**: Vercel Analytics, Sentry for error tracking

## Key Conventions

### Code Style
- TypeScript strict mode enabled
- Functional components with hooks
- camelCase for variables/functions, PascalCase for components
- Modular file structure: features/components/hooks/utils
- Co-location of related files (component + styles + tests)

### Git Workflow
- Branch naming: `feature/`, `bugfix/`, `hotfix/`
- Commit message format: Conventional Commits (feat:, fix:, docs:, etc.)
- PR requires code review and passing CI/CD checks
- Squash and merge strategy for clean history

### Testing
- Test file naming: `*.test.tsx`, `*.test.ts`, `*.spec.tsx`
- Testing framework: Jest + React Testing Library
- E2E Testing: Playwright or Cypress
- Coverage requirements: Minimum 80% for new code
- Required tests: Unit, Integration, E2E for critical paths

## Important Files

- `README.md` - Project documentation
- `package.json` - Dependencies and scripts
- `.env.example` - Environment variables template
- `vercel.json` - Vercel deployment configuration
- `next.config.js` - Next.js configuration
- `prisma/schema.prisma` - Database schema
- `docs/epic-healthcare-platform.md` - Main epic for CoderBot

## Development Workflow

1. Create issue with appropriate label
2. CoderBot breaks down epics automatically
3. Implement features following conventions
4. Submit PR for review
5. Merge after approval

## CoderBot Integration

This project uses CoderBot for automated task management. Key labels:
- `epic` - Large features to be broken down
- `agent:*` - Assigns specific AI agents
- `needs:*` - Special requirements

## Security Considerations

- Never commit secrets or API keys
- Follow OWASP guidelines for web security
- Use environment variables for all configuration
- HIPAA compliance mandatory for all healthcare data
- Implement end-to-end encryption for sensitive data
- Regular security audits and penetration testing
- Implement proper RBAC and data access controls
- Use secure headers and CSP policies

## Performance Requirements

- API response time: < 200ms (p95)
- Page load time: < 3s (Lighthouse score > 90)
- Database queries: optimized with proper indexes
- Core Web Vitals: LCP < 2.5s, FID < 100ms, CLS < 0.1
- Time to Interactive: < 3.8s
- Bundle size: < 200KB gzipped for initial load

## Compliance

- **HIPAA**: Full compliance for Protected Health Information (PHI)
- **GDPR**: EU data protection compliance
- **SOC 2 Type II**: Security and availability standards
- **HITRUST**: Healthcare security framework
- **State Regulations**: Various state healthcare data laws

## Contact

- Technical Lead: [Name/Email]
- Project Manager: [Name/Email]

---

*This document helps AI agents understand the project context and make appropriate decisions.*