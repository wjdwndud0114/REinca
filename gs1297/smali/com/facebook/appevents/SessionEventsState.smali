.class Lcom/facebook/appevents/SessionEventsState;
.super Ljava/lang/Object;
.source "SessionEventsState.java"


# instance fields
.field private final MAX_ACCUMULATED_LOG_EVENTS:I

.field private accumulatedEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/appevents/AppEvent;",
            ">;"
        }
    .end annotation
.end field

.field private anonymousAppDeviceGUID:Ljava/lang/String;

.field private attributionIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

.field private inFlightEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/appevents/AppEvent;",
            ">;"
        }
    .end annotation
.end field

.field private numSkippedEventsDueToFullBuffer:I


# direct methods
.method public constructor <init>(Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;)V
    .locals 1
    .param p1, "identifiers"    # Lcom/facebook/internal/AttributionIdentifiers;
    .param p2, "anonymousGUID"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/appevents/SessionEventsState;->inFlightEvents:Ljava/util/List;

    .line 46
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/facebook/appevents/SessionEventsState;->MAX_ACCUMULATED_LOG_EVENTS:I

    .line 51
    iput-object p1, p0, Lcom/facebook/appevents/SessionEventsState;->attributionIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

    .line 52
    iput-object p2, p0, Lcom/facebook/appevents/SessionEventsState;->anonymousAppDeviceGUID:Ljava/lang/String;

    .line 53
    return-void
.end method

.method private getStringAsByteArray(Ljava/lang/String;)[B
    .locals 3
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 169
    const/4 v1, 0x0

    .line 171
    .local v1, "jsonUtf8":[B
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 176
    :goto_0
    return-object v1

    .line 172
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, "Encoding exception: "

    invoke-static {v2, v0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private populateRequest(Lcom/facebook/GraphRequest;Landroid/content/Context;ILorg/json/JSONArray;Z)V
    .locals 7
    .param p1, "request"    # Lcom/facebook/GraphRequest;
    .param p2, "applicationContext"    # Landroid/content/Context;
    .param p3, "numSkipped"    # I
    .param p4, "events"    # Lorg/json/JSONArray;
    .param p5, "limitEventUsage"    # Z

    .prologue
    .line 135
    const/4 v2, 0x0

    .line 137
    .local v2, "publishParams":Lorg/json/JSONObject;
    :try_start_0
    sget-object v4, Lcom/facebook/internal/AppEventsLoggerUtility$GraphAPIActivityType;->CUSTOM_APP_EVENTS:Lcom/facebook/internal/AppEventsLoggerUtility$GraphAPIActivityType;

    iget-object v5, p0, Lcom/facebook/appevents/SessionEventsState;->attributionIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

    iget-object v6, p0, Lcom/facebook/appevents/SessionEventsState;->anonymousAppDeviceGUID:Ljava/lang/String;

    invoke-static {v4, v5, v6, p5, p2}, Lcom/facebook/internal/AppEventsLoggerUtility;->getJSONObjectForGraphAPICall(Lcom/facebook/internal/AppEventsLoggerUtility$GraphAPIActivityType;Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;ZLandroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    .line 144
    iget v4, p0, Lcom/facebook/appevents/SessionEventsState;->numSkippedEventsDueToFullBuffer:I

    if-lez v4, :cond_0

    .line 145
    const-string v4, "num_skipped_events"

    invoke-virtual {v2, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :cond_0
    :goto_0
    invoke-virtual {p1, v2}, Lcom/facebook/GraphRequest;->setGraphObject(Lorg/json/JSONObject;)V

    .line 153
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->getParameters()Landroid/os/Bundle;

    move-result-object v3

    .line 154
    .local v3, "requestParameters":Landroid/os/Bundle;
    if-nez v3, :cond_1

    .line 155
    new-instance v3, Landroid/os/Bundle;

    .end local v3    # "requestParameters":Landroid/os/Bundle;
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 158
    .restart local v3    # "requestParameters":Landroid/os/Bundle;
    :cond_1
    invoke-virtual {p4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "jsonString":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 160
    const-string v4, "custom_events_file"

    .line 162
    invoke-direct {p0, v1}, Lcom/facebook/appevents/SessionEventsState;->getStringAsByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 160
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 163
    invoke-virtual {p1, v1}, Lcom/facebook/GraphRequest;->setTag(Ljava/lang/Object;)V

    .line 165
    :cond_2
    invoke-virtual {p1, v3}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 166
    return-void

    .line 147
    .end local v1    # "jsonString":Ljava/lang/String;
    .end local v3    # "requestParameters":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Lorg/json/JSONObject;

    .end local v2    # "publishParams":Lorg/json/JSONObject;
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .restart local v2    # "publishParams":Lorg/json/JSONObject;
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized accumulatePersistedEvents(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/appevents/AppEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/AppEvent;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addEvent(Lcom/facebook/appevents/AppEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/facebook/appevents/AppEvent;

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/appevents/SessionEventsState;->inFlightEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    .line 59
    iget v0, p0, Lcom/facebook/appevents/SessionEventsState;->numSkippedEventsDueToFullBuffer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/appevents/SessionEventsState;->numSkippedEventsDueToFullBuffer:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :goto_0
    monitor-exit p0

    return-void

    .line 61
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearInFlightAndStats(Z)V
    .locals 2
    .param p1, "moveToAccumulated"    # Z

    .prologue
    .line 70
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;

    iget-object v1, p0, Lcom/facebook/appevents/SessionEventsState;->inFlightEvents:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/facebook/appevents/SessionEventsState;->inFlightEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/appevents/SessionEventsState;->numSkippedEventsDueToFullBuffer:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAccumulatedEventCount()I
    .locals 1

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEventsToPersist()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/appevents/AppEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;

    .line 118
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/AppEvent;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    return-object v0

    .line 117
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/AppEvent;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public populateRequest(Lcom/facebook/GraphRequest;Landroid/content/Context;ZZ)I
    .locals 7
    .param p1, "request"    # Lcom/facebook/GraphRequest;
    .param p2, "applicationContext"    # Landroid/content/Context;
    .param p3, "includeImplicitEvents"    # Z
    .param p4, "limitEventUsage"    # Z

    .prologue
    .line 85
    monitor-enter p0

    .line 86
    :try_start_0
    iget v3, p0, Lcom/facebook/appevents/SessionEventsState;->numSkippedEventsDueToFullBuffer:I

    .line 89
    .local v3, "numSkipped":I
    iget-object v0, p0, Lcom/facebook/appevents/SessionEventsState;->inFlightEvents:Ljava/util/List;

    iget-object v1, p0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 90
    iget-object v0, p0, Lcom/facebook/appevents/SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 92
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 93
    .local v4, "jsonArray":Lorg/json/JSONArray;
    iget-object v0, p0, Lcom/facebook/appevents/SessionEventsState;->inFlightEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/appevents/AppEvent;

    .line 94
    .local v6, "event":Lcom/facebook/appevents/AppEvent;
    if-nez p3, :cond_1

    invoke-virtual {v6}, Lcom/facebook/appevents/AppEvent;->getIsImplicit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    :cond_1
    invoke-virtual {v6}, Lcom/facebook/appevents/AppEvent;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 102
    .end local v3    # "numSkipped":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "event":Lcom/facebook/appevents/AppEvent;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 99
    .restart local v3    # "numSkipped":I
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 100
    const/4 v0, 0x0

    monitor-exit p0

    .line 110
    :goto_1
    return v0

    .line 102
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p4

    .line 104
    invoke-direct/range {v0 .. v5}, Lcom/facebook/appevents/SessionEventsState;->populateRequest(Lcom/facebook/GraphRequest;Landroid/content/Context;ILorg/json/JSONArray;Z)V

    .line 110
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    goto :goto_1
.end method
