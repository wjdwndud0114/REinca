.class final Lcom/facebook/internal/BundleJSONConverter$6;
.super Ljava/lang/Object;
.source "BundleJSONConverter.java"

# interfaces
.implements Lcom/facebook/internal/BundleJSONConverter$Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/BundleJSONConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setOnBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected type from JSON"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 95
    .local v0, "jsonArray":Lorg/json/JSONArray;
    check-cast p3, [Ljava/lang/String;

    .end local p3    # "value":Ljava/lang/Object;
    check-cast p3, [Ljava/lang/String;

    array-length v3, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p3, v2

    .line 96
    .local v1, "stringValue":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 95
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    .end local v1    # "stringValue":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    return-void
.end method
