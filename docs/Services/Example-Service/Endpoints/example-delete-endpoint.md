<div style="display: flex; gap: 10px;">
    {% include-markdown "Endpoint-Types/delete.md" %}
    <div style="font-size: 20px;font-weight: bold;">
        /api/account/example-delete-endpoint/{ressource_id}
    </div>
</div>

## Description

{% include-markdown "../Endpoint-Descriptions/example-delete-endpoint-description.md" %}

### Requirements

- **Authorization:** Session (Session Cookie)

## Responses

{% include-markdown "Common-Response-Models/204-no-content.md" %}

{% include-markdown "Common-Response-Models/401-unauthorized.md" %}

{% include-markdown "Common-Response-Models/403-permission-denied.md" %}

{% include-markdown "Common-Response-Models/404-ressources-not-found.md" %}

### 500 (Internal Server Error)

```json
{
    "detail": "Something did not work"
}
```
{% include-markdown "Common-Response-Models/502-bad-gateway.md" %}

{% include-markdown "Common-Response-Models/504-gateway-timeout.md" %}
