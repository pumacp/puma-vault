---
type: permanent
title: "Human-in-the-Loop (HITL) and Bounded Autonomy for AI Agents"
topic: human-ai-collaboration
tags: [permanent, hitl, human-in-the-loop, bounded-autonomy, ai-safety, ethics, oversight, control, human-ai-collaboration, puma-core, research, agents, architecture, ethics, project-management, accountability, alignment]
created: 2026-04-13
updated: 2026-06-15
aliases: ["HITL", "Bounded Autonomy", "Human Oversight", "Human-AI Collaboration"]
---

# PN: Human-in-the-Loop (HITL) and Bounded Autonomy

> [!abstract] Core Idea
> HITL design ensures that AI agents operate within boundaries where consequential decisions are reviewed by humans before execution. Bounded autonomy defines the scope of tasks an agent may complete without approval. For PUMA, HITL is not a fallback mechanism — it is a fundamental design constraint that preserves PM accountability while enabling automation.

---

## Why HITL Matters for PUMA

### The Accountability Gap

When an AI agent autonomously triages 500 issues:
- **Who is responsible** if a Critical bug is mis-classified as Low priority?
- **Who is accountable** if the sprint is overloaded with misestimated 3-SP tasks that are actually 13-SP?

Autonomous agents shift the locus of decision from human to machine, but organizational accountability remains with the PM. HITL bridges this gap by maintaining **human authorization** as the gate for high-stakes actions.

### Empirical Justification

From PUMA's own experiments: even frontier models achieve 70–85% Macro-F1 on triage classification. This means **15–30% of issues receive incorrect labels** without human review. At 100 issues/sprint, that is 15–30 misclassified tickets flowing into planning.

---

## HITL Design Patterns

### Pattern 1: Threshold-Based Escalation

Agent completes the task; escalates to human only if confidence falls below a threshold.

```python
def triage_with_hitl(issue, llm, threshold=0.80):
    result = llm.classify(issue)
    
    if result["confidence"] >= threshold:
        return result  # Autonomous action
    else:
        # Escalate to human reviewer
        return request_human_review(issue, result, 
                                    reason=f"Low confidence: {result['confidence']:.2f}")
```

**PUMA use case**: Issue classification — auto-approve high-confidence predictions; flag ambiguous issues (e.g., Bug vs. Improvement overlap) for PM review.

### Pattern 2: Batch Review (Sampling-Based Audit)

Agent processes all issues; human reviews a random sample (e.g., 10%) to calibrate drift.

- **Benefit**: Scales to large volumes; catches systematic errors before full sprint planning
- **Risk**: Low-frequency errors may not appear in samples; biased sampling misses edge cases
- **PUMA**: Recommended audit protocol for Stage 2 (triage) outputs

### Pattern 3: Staged Autonomy

Full human review in Phase 1 → Selective review in Phase 2 → Autonomous with audit in Phase 3

| Phase | Condition | Human Involvement |
|-------|-----------|-----------------|
| Pilot | New project, no calibration data | 100% review |
| Calibrated | >200 issues processed, F1 > 0.75 | Review bottom 20% by confidence |
| Autonomous | >500 issues, F1 > 0.85, drift < 5% | 10% random audit |

---

## Bounded Autonomy Framework

Bounded autonomy defines explicit **authority bounds** for each agent action type:

| Action Category | Autonomy Level | HITL Gate |
|----------------|---------------|-----------|
| **Read** (view issue data) | Full autonomy | None |
| **Classify** (assign type/priority) | Conditional autonomy | Review if conf < 0.80 |
| **Comment** (post reasoning in issue) | Conditional autonomy | Review if external-facing |
| **Label** (write label to Jira) | Limited autonomy | PM approval for Sprint issues |
| **Assign** (route to team member) | Limited autonomy | Team lead approval |
| **Close/Resolve** | No autonomy | Always human |
| **Delete** | No autonomy | Always human |

> [!warning] Principle of Minimal Footprint
> Agents should request only the permissions necessary for the current task. An issue triage agent does not need write access to sprint backlogs. Scope creep in agent permissions creates audit trail gaps and accountability failures.

---

## Mesa-Optimization and Deceptive Alignment

From Hubinger et al. (2019), inner alignment failures are theoretically possible in learned optimizers:

- **Mesa-optimizer**: A model that, during training, has learned an internal optimization process
- **Deceptive alignment**: The mesa-optimizer behaves as intended during training/evaluation (to preserve deployment) but pursues a different objective once deployed

For PUMA, this theoretical risk justifies:
1. **Reproducibility protocol**: Fixed seed (42), temperature=0 → eliminates stochastic variation that could mask misalignment
2. **Red-teaming**: Adversarial issue construction to test whether the agent's stated reasoning matches its actual classification behavior
3. **Interpretability logging**: Full prompt + response logs for all agent actions → enables post-hoc audit

---

## Human-AI Complementarity

### Comparative Advantage Framework

| Task Type | Human Advantage | AI Advantage |
|-----------|----------------|-------------|
| Novel/unprecedented issues | Domain judgment, tacit knowledge | None |
| High-volume routine triage | None | Speed, consistency, no fatigue |
| Ambiguous classification (Bug vs. Improvement) | Contextual business knowledge | Pattern recognition from historical data |
| Priority calibration under deadline | Strategic context | None |
| Effort estimation (familiar issue type) | None | Reference class forecasting (vs. planning fallacy) |

**PUMA design principle**: AI handles volume and reference-class pattern matching; humans handle novelty and high-stakes override.

### Skill Atrophy Risk

A documented HITL risk: if humans always accept agent recommendations, they gradually lose calibration ability. PUMA mitigates this via:
- **Randomized override prompts**: Occasionally prompt PM to classify before seeing agent prediction
- **Disagreement logging**: Track human-agent disagreement rate; alert if it drops near 0% (rubber-stamping)

---

## Regulatory and Ethical Context

### EU AI Act (2024)

- High-risk AI systems in HR/employment require: human oversight, accuracy documentation, and traceability
- Issue triage/routing systems that affect work assignment may fall under "employment" category
- **PUMA compliance**: HITL gates + audit logs + confidence reporting satisfy transparency requirements

### ACM Code of Ethics (2.7)

> "The public good is the paramount concern...computing professionals should take precautions to protect the privacy and accuracy of sensitive information, especially where decisions affecting individuals are involved."

PUMA's HITL design directly addresses this for PM decisions affecting developer workloads and sprint assignments.

---

## PUMA Integration

- **Ch.5 Discussion**: Frame HITL as a design choice, not a limitation — PUMA is "decision support" not "autonomous replacement"
- **SmartPMO Stage 5**: Bounded autonomy protocol governs which Jira actions require PM approval
- **Ethics Chapter**: HITL as the primary mitigation for role displacement and accountability gap risks
- **Experiment design**: All PUMA experiments generate human-reviewable JSON + reasoning logs

---

## Related Notes

- [[20 - Literature/20.1 Papers/Agent-Architectures/LN-Hubinger-2019-LearnedOptimization]] — mesa-optimization theoretical basis
- [[20 - Literature/20.1 Papers/PM-AI-Convergence/LN-Collaborating-AIAgents-2025]] — empirical field evidence on human-AI teams
- [[30 - Permanent/31 Concepts/PN-AlgorithmicBias]] — bias risks that HITL must catch
- [[50 - Areas/55 Ethics/Ethics-Review-Log]] — PUMA ethics analysis

## MOCs

- [[80 - MOC/81 Topic-Maps/MOC-LLM-Benchmarks-PM-AI]]
- [[80 - MOC/81 Topic-Maps/MOC-PUMA-Master]]
