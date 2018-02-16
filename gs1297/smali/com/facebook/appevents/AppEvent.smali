.class Lcom/facebook/appevents/AppEvent;
.super Ljava/lang/Object;
.source "AppEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/AppEvent$SerializationProxyV1;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L

.field private static final validatedIdentifiers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isImplicit:Z

.field private jsonObject:Lorg/json/JSONObject;

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/appevents/AppEvent;->validatedIdentifiers:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V
    .locals 12
    .param p1, "contextName"    # Ljava/lang/String;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "valueToSum"    # Ljava/lang/Double;
    .param p4, "parameters"    # Landroid/os/Bundle;
    .param p5, "isImplicitlyLogged"    # Z
    .param p6, "currentSessionId"    # Ljava/util/UUID;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    :try_start_0
    invoke-direct {p0, p2}, Lcom/facebook/appevents/AppEvent;->validateIdentifier(Ljava/lang/String;)V

    .line 58
    iput-object p2, p0, Lcom/facebook/appevents/AppEvent;->name:Ljava/lang/String;

    .line 59
    move/from16 v0, p5

    iput-boolean v0, p0, Lcom/facebook/appevents/AppEvent;->isImplicit:Z

    .line 60
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    iput-object v6, p0, Lcom/facebook/appevents/AppEvent;->jsonObject:Lorg/json/JSONObject;

    .line 62
    iget-object v6, p0, Lcom/facebook/appevents/AppEvent;->jsonObject:Lorg/json/JSONObject;

    const-string v7, "_eventName"

    invoke-virtual {v6, v7, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    iget-object v6, p0, Lcom/facebook/appevents/AppEvent;->jsonObject:Lorg/json/JSONObject;

    const-string v7, "_logTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 64
    iget-object v6, p0, Lcom/facebook/appevents/AppEvent;->jsonObject:Lorg/json/JSONObject;

    const-string v7, "_ui"

    invoke-virtual {v6, v7, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    if-eqz p6, :cond_0

    .line 66
    iget-object v6, p0, Lcom/facebook/appevents/AppEvent;->jsonObject:Lorg/json/JSONObject;

    const-string v7, "_session_id"

    move-object/from16 v0, p6

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    :cond_0
    if-eqz p3, :cond_1

    .line 70
    iget-object v6, p0, Lcom/facebook/appevents/AppEvent;->jsonObject:Lorg/json/JSONObject;

    const-string v7, "_valueToSum"

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 73
    :cond_1
    iget-boolean v6, p0, Lcom/facebook/appevents/AppEvent;->isImplicit:Z

    if-eqz v6, :cond_2

    .line 74
    iget-object v6, p0, Lcom/facebook/appevents/AppEvent;->jsonObject:Lorg/json/JSONObject;

    const-string v7, "_implicitlyLogged"

    const-string v8, "1"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    :cond_2
    if-eqz p4, :cond_5

    .line 78
    invoke-virtual/range {p4 .. p4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 80
    .local v4, "key":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/facebook/appevents/AppEvent;->validateIdentifier(Ljava/lang/String;)V

    .line 82
    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 83
    .local v5, "value":Ljava/lang/Object;
    instance-of v7, v5, Ljava/lang/String;

    if-nez v7, :cond_4

    instance-of v7, v5, Ljava/lang/Number;

    if-nez v7, :cond_4

    .line 84
    new-instance v6, Lcom/facebook/FacebookException;

    const-string v7, "Parameter value \'%s\' for key \'%s\' should be a string or a numeric type."

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    .line 85
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_1

    .line 101
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 104
    .local v3, "jsonException":Lorg/json/JSONException;
    sget-object v6, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    const-string v7, "AppEvents"

    const-string v8, "JSON encoding for app event failed: \'%s\'"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 105
    invoke-virtual {v3}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 104
    invoke-static {v6, v7, v8, v9}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/facebook/appevents/AppEvent;->jsonObject:Lorg/json/JSONObject;

    .line 114
    .end local v3    # "jsonException":Lorg/json/JSONException;
    :cond_3
    :goto_1
    return-void

    .line 93
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_4
    :try_start_1
    iget-object v7, p0, Lcom/facebook/appevents/AppEvent;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/facebook/FacebookException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 108
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 110
    .local v2, "e":Lcom/facebook/FacebookException;
    sget-object v6, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    const-string v7, "AppEvents"

    const-string v8, "Invalid app event name or parameter:"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 111
    invoke-virtual {v2}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 110
    invoke-static {v6, v7, v8, v9}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/facebook/appevents/AppEvent;->jsonObject:Lorg/json/JSONObject;

    goto :goto_1

    .line 97
    .end local v2    # "e":Lcom/facebook/FacebookException;
    :cond_5
    :try_start_2
    iget-boolean v6, p0, Lcom/facebook/appevents/AppEvent;->isImplicit:Z

    if-nez v6, :cond_3

    .line 98
    sget-object v6, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    const-string v7, "AppEvents"

    const-string v8, "Created app event \'%s\'"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/facebook/appevents/AppEvent;->jsonObject:Lorg/json/JSONObject;

    .line 99
    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 98
    invoke-static {v6, v7, v8, v9}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/facebook/FacebookException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method

.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "jsonString"    # Ljava/lang/String;
    .param p2, "isImplicit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/appevents/AppEvent;->jsonObject:Lorg/json/JSONObject;

    .line 122
    iput-boolean p2, p0, Lcom/facebook/appevents/AppEvent;->isImplicit:Z

    .line 123
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZLcom/facebook/appevents/AppEvent$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lcom/facebook/appevents/AppEvent$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/facebook/appevents/AppEvent;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method private validateIdentifier(Ljava/lang/String;)V
    .locals 10
    .param p1, "identifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/FacebookException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x28

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 138
    const-string v2, "^[0-9a-zA-Z_]+[0-9a-zA-Z _-]*$"

    .line 140
    .local v2, "regex":Ljava/lang/String;
    const/16 v0, 0x28

    .line 141
    .local v0, "MAX_IDENTIFIER_LENGTH":I
    if-eqz p1, :cond_0

    .line 142
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v9, :cond_2

    .line 144
    :cond_0
    if-nez p1, :cond_1

    .line 145
    const-string p1, "<None Provided>"

    .line 147
    :cond_1
    new-instance v3, Lcom/facebook/FacebookException;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v5, "Identifier \'%s\' must be less than %d characters"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    .line 152
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    .line 148
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 156
    :cond_2
    const/4 v1, 0x0

    .line 157
    .local v1, "alreadyValidated":Z
    sget-object v4, Lcom/facebook/appevents/AppEvent;->validatedIdentifiers:Ljava/util/HashSet;

    monitor-enter v4

    .line 158
    :try_start_0
    sget-object v3, Lcom/facebook/appevents/AppEvent;->validatedIdentifiers:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 159
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    if-nez v1, :cond_3

    .line 162
    const-string v3, "^[0-9a-zA-Z_]+[0-9a-zA-Z _-]*$"

    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 163
    sget-object v4, Lcom/facebook/appevents/AppEvent;->validatedIdentifiers:Ljava/util/HashSet;

    monitor-enter v4

    .line 164
    :try_start_1
    sget-object v3, Lcom/facebook/appevents/AppEvent;->validatedIdentifiers:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 165
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 177
    :cond_3
    return-void

    .line 159
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 165
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 167
    :cond_4
    new-instance v3, Lcom/facebook/FacebookException;

    const-string v4, "Skipping event named \'%s\' due to illegal name - must be under 40 chars and alphanumeric, _, - or space, and not start with a space or hyphen."

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v7

    .line 168
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 195
    new-instance v0, Lcom/facebook/appevents/AppEvent$SerializationProxyV1;

    iget-object v1, p0, Lcom/facebook/appevents/AppEvent;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/facebook/appevents/AppEvent;->isImplicit:Z

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/appevents/AppEvent$SerializationProxyV1;-><init>(Ljava/lang/String;ZLcom/facebook/appevents/AppEvent$1;)V

    return-object v0
.end method


# virtual methods
.method public getIsImplicit()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/facebook/appevents/AppEvent;->isImplicit:Z

    return v0
.end method

.method public getJSONObject()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/facebook/appevents/AppEvent;->jsonObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/facebook/appevents/AppEvent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 200
    const-string v0, "\"%s\", implicit: %b, json: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/appevents/AppEvent;->jsonObject:Lorg/json/JSONObject;

    const-string v4, "_eventName"

    .line 202
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/facebook/appevents/AppEvent;->isImplicit:Z

    .line 203
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/facebook/appevents/AppEvent;->jsonObject:Lorg/json/JSONObject;

    .line 204
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 200
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
