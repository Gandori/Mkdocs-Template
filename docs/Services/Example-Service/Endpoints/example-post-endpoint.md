<div style="display: flex; gap: 10px;">
    {% include-markdown "Endpoint-Types/post.md" %}
    <div style="font-size: 20px;font-weight: bold;">
        /api/example-post-endpoint
    </div>
</div>

## Description

{% include-markdown "./../Endpoint-Descriptions/example-post-endpoint-description.md" %}

### Requirements

- **Authorization:** Session (Session Cookie)

## Request Body

| Name | Type | Required/Optional | Regex | Description |
| - | - | - | - | - |
| name | string | Required | ^[a-zA-Z]{4,15}$ | - |

## Responses

{% include-markdown "Common-Response-Models/204-no-content.md" %}

{% include-markdown "Common-Response-Models/401-unauthorized.md" %}

{% include-markdown "Common-Response-Models/403-permission-denied.md" %}

### 500 (Internal Server Error)

```json
{
    "detail": "Something did not work"
}
```

{% include-markdown "Common-Response-Models/502-bad-gateway.md" %}

{% include-markdown "Common-Response-Models/504-gateway-timeout.md" %}
