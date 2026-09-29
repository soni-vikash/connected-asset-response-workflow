# Event-to-Action Workflow

This document explains the reusable workflow.

## Step 1: Receive an event

A device, sensor, application, QR code, NFC tag, or operator may create an event.

Example:

```text
Asset: Cooling Unit CU-104
Event: Temperature above configured range
Time: 2026-09-29 08:40
Value: 11.8°C
Expected range: 2°C–8°C
```

The event should contain enough information to identify the asset and understand what happened.

## Step 2: Identify the asset

Use the asset ID to find:

- Asset name
- Asset type
- Location
- Owner or responsible team
- Current status
- Last service date
- Recent event history
- Risk or criticality level

If the asset cannot be identified, the event should be marked as incomplete and sent for manual review.

## Step 3: Add context

An alert by itself may not be enough to determine the next action.

Add relevant context such as:

- How long the issue has continued
- Whether the value is increasing or decreasing
- Whether similar events occurred recently
- Whether the asset supports a critical operation
- Whether a technician is already assigned
- Whether the asset is currently active
- Whether another related asset is affected

## Step 4: Classify priority

Use simple categories:

### Critical

Immediate human attention is required.

Examples:

- Safety risk
- Major equipment failure
- Critical operation affected
- Severe value outside the safe range
- Multiple connected assets affected

### High

Action should begin soon.

Examples:

- Repeated warning
- Important asset affected
- Performance falling continuously
- Service deadline exceeded

### Medium

Review during the current operating period.

Examples:

- Single non-critical warning
- Minor performance change
- Preventive maintenance due soon

### Low

Monitor or include in scheduled review.

Examples:

- Small deviation
- Informational event
- No immediate operational effect

Priority must be confirmed by an authorised person when the decision could affect safety, service continuity, finances, or compliance.

## Step 5: Assign an owner

The alert should be routed to a person or team that can act on it.

Possible owners:

- Field technician
- Facilities manager
- Maintenance team
- Fleet manager
- Warehouse operator
- Site supervisor
- IT or operations team

Do not send sensitive asset information to users who are not authorised to view it.

## Step 6: Provide asset context

The person receiving the alert should be able to access the relevant information through an approved interface.

This may be:

- A web dashboard
- A mobile application
- A QR code
- An NFC tag
- A work-order system
- An internal operations platform

Useful information includes:

- Asset identity
- Location
- Current event
- Previous events
- Maintenance history
- Relevant instructions
- Open work orders
- Contact details for escalation

## Step 7: Review the recommendation

An AI system may produce:

- A summary
- A suggested priority
- A likely cause
- Missing information
- Recommended checks
- An escalation suggestion

The assigned person must review the recommendation before action.

## Step 8: Take and record action

The person handling the event records:

- What was inspected
- What was found
- What action was taken
- Whether parts or resources were required
- Whether the issue was resolved
- Whether escalation was needed
- When the next review is due

## Step 9: Close or escalate

An event can be:

- Resolved
- Monitoring
- Scheduled for later
- Escalated
- Invalid or duplicate
- Waiting for information

Only an authorised user should close a critical or high-priority event.

## Minimum event fields

```text
event_id
asset_id
event_type
event_time
measured_value
expected_range
source
status
```

## Minimum action fields

```text
action_id
event_id
asset_id
assigned_to
priority
recommended_action
final_action
status
reviewed_by
completed_at
notes
```
