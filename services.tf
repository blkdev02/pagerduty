/* services.tf */

resource "pagerduty_service" "energon-v1" {
  name = "Energon Service v1"
  auto_resolve_timeout = 14400
  acknowledgement_timeout = 1800
  escalation_policy = "${pagerduty_escalation_policy.autobots-esc-policy.id}"

  incident_urgency_rule {
    type = "constant"
    urgency = "high"
  }
}