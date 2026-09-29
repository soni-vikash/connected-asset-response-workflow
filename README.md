# Connected Asset Response Workflow

A simple, reusable workflow for turning IoT, sensor, NFC, QR, or connected-asset alerts into clear operational actions.

This repository is designed for teams that manage physical assets, devices, machines, vehicles, equipment, or environments that generate operational data.

It can be adapted for:

- Building equipment
- Manufacturing machines
- Warehouse systems
- Fleet and vehicle operations
- Cold-chain monitoring
- Medical or laboratory equipment
- Retail infrastructure
- Energy and utility assets
- Any connected operational environment

## The problem

Many organisations already receive data from devices and sensors.

The problem is what happens after an alert appears.

Teams may still need to answer:

- Which asset generated the alert?
- Where is the asset located?
- How serious is the issue?
- Who is responsible for it?
- Has this happened before?
- What should the person do next?
- Was the issue actually resolved?

Without a clear workflow, alerts become notifications that people ignore, forward, or investigate manually.

## The workflow

```text
Device or sensor event
        ↓
Identify the asset
        ↓
Add asset history and context
        ↓
Classify priority
        ↓
Notify the authorised person
        ↓
Review the recommended action
        ↓
Complete and record the action
        ↓
Create history for future events
```

## What is included

- A reusable event-to-action workflow
- A sample asset registry
- A sample alert file
- An AI prompt for alert triage
- An action tracking template
- An access and security checklist

## Quick start

1. Open `templates/asset-registry.csv`.
2. Replace the sample assets with your own asset information.
3. Add device or sensor events to `examples/sample-alerts.csv`.
4. Use `ai-alert-triage-prompt.md` to create a structured triage recommendation.
5. Review the recommendation with an authorised person.
6. Record the final decision in `templates/action-log.csv`.
7. Adapt the workflow to your own operations.

## What the AI is allowed to do

The AI may help to:

- Summarise an alert
- Identify missing information
- Suggest a priority
- Highlight relevant asset history
- Recommend questions for the technician or operator
- Draft an action checklist

## What the AI should not do

The AI should not:

- Make an unreviewed safety-critical decision
- Automatically shut down equipment
- Change device configuration without authorisation
- Send sensitive information to unauthorised users
- Replace a qualified technician or operator
- Mark an issue as resolved without human confirmation

## Example industries

The same workflow can be used wherever connected assets generate events.

For example:

- A building system reports an abnormal temperature.
- A warehouse sensor detects a cold-storage issue.
- A vehicle reports a battery fault.
- A factory machine shows unusual vibration.
- A medical device reports a maintenance warning.
- A retail refrigerator loses its target temperature.

The asset and alert may change, but the operational pattern remains similar:

```text
Signal → Context → Priority → Owner → Action → Record
```

## Security note

Use unique asset and device identifiers. Restrict access according to the user's role. Protect data in transit and at rest. Require authorisation for configuration changes, system updates, and actions that can affect equipment or people.

This repository is a workflow reference. It is not a production IoT platform and should not be connected directly to live devices without proper security review, testing, monitoring, and approval.

## About DianApps

DianApps helps businesses design and build mobile, web, IoT, AI, and automation solutions for operational challenges.

This repository is a practical reference for understanding how connected-asset data can be converted into useful, human-reviewed workflows.

Website: https://dianapps.com/

## Disclaimer

The examples in this repository are fictional and contain no real customer, device, location, or operational data.
