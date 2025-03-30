<div style="display: flex; gap: 10px;">
    {% include-markdown "Endpoint-Types/get.md" %}
    <div style="font-size: 20px;font-weight: bold;">
        /api/example-get-endpoint
    </div>
</div>

## Description

{% include-markdown "./../Endpoint-Descriptions/example-get-endpoint-description.md" %}

### Requirements

- **Authorization:** Session (Session Cookie)

## Responses

### 200 (OK)

```json
{
    "id": "string",
    "name": "string",
    "created_on": "string",
    "expire_date": null | "string",
    "connected": [
        {
            "id": "string",
            "name": "string"
        }
    ]
}
```

{% include-markdown "Common-Response-Models/401-unauthorized.md" %}

### 500 (Internal Server Error)

```json
{
    "detail": "The data could not be retrieved"
}
```

{% include-markdown "Common-Response-Models/502-bad-gateway.md" %}

{% include-markdown "Common-Response-Models/504-gateway-timeout.md" %}
