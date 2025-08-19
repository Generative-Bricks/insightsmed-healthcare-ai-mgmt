# InsightsMed Healthcare AI Management Platform

[![Next.js](https://img.shields.io/badge/Next.js-14+-black?logo=next.js)](https://nextjs.org/)
[![TypeScript](https://img.shields.io/badge/TypeScript-5.0+-blue?logo=typescript)](https://www.typescriptlang.org/)
[![Vercel](https://img.shields.io/badge/Deployed%20on-Vercel-black?logo=vercel)](https://vercel.com)
[![HIPAA Compliant](https://img.shields.io/badge/HIPAA-Compliant-green)](https://www.hhs.gov/hipaa)
[![License](https://img.shields.io/badge/License-Proprietary-red)]()

## 🏥 Overview

InsightsMed Healthcare AI Management Platform is a comprehensive suite of AI-powered tools designed to revolutionize healthcare business management. Our platform leverages cutting-edge artificial intelligence to streamline contract analysis, optimize denial management, and provide real-time KPI monitoring for healthcare organizations.

## ✨ Key Features

### 📄 Contract Analysis Tool ("Golden Grid")
AI-powered extraction and analysis of critical contract data:
- **Payer Information Management** - Contact details and representative tracking
- **Deadline Tracking** - Timely filing and appeal deadline monitoring
- **Prior Authorization** - Requirements extraction and tracking
- **Fee Schedule Analysis** - Comparative analysis against Medicare rates
- **Credentialing Management** - Requirements and forms tracking
- **Payment Terms** - Adjudication timelines and interest calculations

### 📊 Denials Analysis Dashboard
Real-time tracking and multi-dimensional analysis of claim denials:
- **CPT Code Analysis** - Denial patterns by procedure code
- **Location/Department Metrics** - Performance by facility
- **Provider Analytics** - Individual provider denial rates
- **Payor Patterns** - Denial trends by insurance company
- **Financial Impact** - Expected vs actual reimbursement tracking
- **Predictive Analytics** - AI-powered denial prevention insights

### 📈 KPI Dashboard
Comprehensive 12-month rolling performance metrics:
- **Revenue Analytics** - By payor, location, and provider
- **AR Management** - Days in AR and aging analysis
- **Denial Metrics** - Percentage by classification and CPT
- **wRVU Tracking** - Work RVU and payment analysis
- **Patient Volume** - Daily patient metrics by type
- **Operational Efficiency** - Charge lag and appointment availability
- **Financial Performance** - Charges, payments, adjustments tracking

## 🚀 Getting Started

### Prerequisites

- Node.js 18+ 
- PostgreSQL 14+
- Vercel account (for deployment)
- OpenAI API key (for AI features)

### Installation

1. Clone the repository:
```bash
git clone https://github.com/Generative-Bricks/insightsmed-healthcare-ai-mgmt.git
cd insightsmed-healthcare-ai-mgmt
```

2. Install dependencies:
```bash
npm install
```

3. Set up environment variables:
```bash
cp .env.example .env.local
```

4. Configure your environment variables:
```env
DATABASE_URL=postgresql://...
NEXTAUTH_SECRET=...
OPENAI_API_KEY=...
```

5. Run database migrations:
```bash
npx prisma migrate dev
```

6. Start the development server:
```bash
npm run dev
```

7. Open [http://localhost:3000](http://localhost:3000) in your browser

## 🏗️ Tech Stack

### Core Technologies
- **Framework**: [Next.js 14+](https://nextjs.org/) with App Router
- **Language**: [TypeScript](https://www.typescriptlang.org/) with strict mode
- **Database**: [PostgreSQL](https://www.postgresql.org/) with [Prisma ORM](https://www.prisma.io/)
- **Authentication**: [NextAuth.js](https://next-auth.js.org/) with MFA support
- **Styling**: [Tailwind CSS](https://tailwindcss.com/) with [shadcn/ui](https://ui.shadcn.com/)

### AI & Analytics
- **LLM**: OpenAI GPT-4 for contract analysis
- **Orchestration**: [LangChain](https://langchain.com/) for AI workflows
- **Vector DB**: [Pinecone](https://www.pinecone.io/) for semantic search
- **Visualization**: [Recharts](https://recharts.org/) and [Tremor](https://www.tremor.so/)

### Infrastructure
- **Hosting**: [Vercel](https://vercel.com) (serverless)
- **Storage**: Vercel Blob Storage / AWS S3
- **Search**: [Algolia](https://www.algolia.com/) for contract search
- **Monitoring**: Vercel Analytics & [Sentry](https://sentry.io/)

## 📁 Project Structure

```
insightsmed-healthcare-ai-mgmt/
├── app/                    # Next.js App Router pages
│   ├── api/               # API routes
│   ├── contracts/         # Contract analysis features
│   ├── denials/          # Denials dashboard
│   ├── kpi/              # KPI dashboard
│   └── auth/             # Authentication pages
├── components/            # React components
│   ├── ui/               # shadcn/ui components
│   └── features/         # Feature-specific components
├── lib/                   # Utility functions
│   ├── ai/               # AI/ML utilities
│   ├── db/               # Database utilities
│   └── auth/             # Auth helpers
├── prisma/               # Database schema
├── public/               # Static assets
└── docs/                 # Documentation
```

## 🔒 Security & Compliance

- **HIPAA Compliant** - Full PHI protection
- **End-to-End Encryption** - Data security at rest and in transit
- **Role-Based Access Control** - Granular permission management
- **Audit Logging** - Complete activity tracking
- **SOC 2 Type II** - Security standards compliance
- **GDPR Ready** - EU data protection compliance

## 📊 Performance Requirements

- **Page Load**: < 3 seconds (Lighthouse score > 90)
- **API Response**: < 200ms (p95)
- **Core Web Vitals**: 
  - LCP < 2.5s
  - FID < 100ms
  - CLS < 0.1
- **Uptime**: 99.9% SLA
- **Scale**: Support for 10,000+ concurrent users

## 🛠️ Development

### Available Scripts

```bash
npm run dev        # Start development server
npm run build      # Build for production
npm run start      # Start production server
npm run lint       # Run ESLint
npm run test       # Run tests
npm run test:e2e   # Run E2E tests
```

### Testing

- **Unit Tests**: Jest + React Testing Library
- **E2E Tests**: Playwright
- **Coverage**: Minimum 80% for new code

### Code Style

- TypeScript strict mode enabled
- ESLint + Prettier for formatting
- Conventional Commits for version control
- Functional components with hooks

## 🚢 Deployment

The application is optimized for deployment on Vercel:

```bash
vercel deploy
```

See [Vercel documentation](https://vercel.com/docs) for detailed deployment instructions.

## 🤖 CoderBot Integration

This project uses CoderBot for automated task management. See [CoderBot Documentation](./docs/CODERBOT.md) for details.

### Active Epic
- **[#3 - InsightsMed Healthcare AI Management Platform](https://github.com/Generative-Bricks/insightsmed-healthcare-ai-mgmt/issues/3)**
- Status: In Development (CoderBot Processing)
- Timeline: 3-6 months

## 📚 Documentation

- [Product Requirements](./docs/prd.txt)
- [Epic Details](./docs/epic-healthcare-platform.md)
- [CoderBot Usage](./docs/CODERBOT.md)
- [Claude AI Context](./CLAUDE.md)

## 🤝 Contributing

This is a proprietary project. Please contact the project team for contribution guidelines.

## 📝 License

Proprietary - All Rights Reserved

## 📞 Support

For support and questions, please contact the InsightsMed development team.

## 🎯 Roadmap

### Current Phase (Q1 2025)
- [x] Project setup and infrastructure
- [ ] Contract Analysis Tool MVP
- [ ] Denials Dashboard implementation
- [ ] KPI Dashboard development

### Next Phase (Q2 2025)
- [ ] AI optimization and enhancement
- [ ] Advanced analytics features
- [ ] Enterprise integrations
- [ ] Mobile application

### Future Enhancements
- [ ] Real-time EHR integration
- [ ] Automated claim submission
- [ ] Patient portal
- [ ] Predictive revenue modeling

---

**Built with ❤️ by the InsightsMed Team**