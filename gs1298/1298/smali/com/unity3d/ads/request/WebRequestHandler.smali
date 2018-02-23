.class public Lcom/unity3d/ads/request/WebRequestHandler;
.super Landroid/os/Handler;
.source "WebRequestHandler.java"


# instance fields
.field private _canceled:Z

.field private _currentRequest:Lcom/unity3d/ads/request/WebRequest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/ads/request/WebRequestHandler;->_canceled:Z

    return-void
.end method

.method private getBundleForFailResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "error"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "body"    # Ljava/lang/String;

    .prologue
    .line 118
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 119
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v1, "error"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v1, "type"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v1, "body"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-object v0
.end method

.method private makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;IILcom/unity3d/ads/request/WebRequestResultReceiver;)V
    .locals 13
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p4, "body"    # Ljava/lang/String;
    .param p5, "connectTimeout"    # I
    .param p6, "readTimeout"    # I
    .param p7, "receiver"    # Lcom/unity3d/ads/request/WebRequestResultReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "II",
            "Lcom/unity3d/ads/request/WebRequestResultReceiver;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 75
    .local p3, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-boolean v1, p0, Lcom/unity3d/ads/request/WebRequestHandler;->_canceled:Z

    if-eqz v1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    new-instance v1, Lcom/unity3d/ads/request/WebRequest;

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/unity3d/ads/request/WebRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;II)V

    iput-object v1, p0, Lcom/unity3d/ads/request/WebRequestHandler;->_currentRequest:Lcom/unity3d/ads/request/WebRequest;

    .line 81
    if-eqz p4, :cond_2

    .line 82
    iget-object v1, p0, Lcom/unity3d/ads/request/WebRequestHandler;->_currentRequest:Lcom/unity3d/ads/request/WebRequest;

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Lcom/unity3d/ads/request/WebRequest;->setBody(Ljava/lang/String;)V

    .line 87
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/ads/request/WebRequestHandler;->_currentRequest:Lcom/unity3d/ads/request/WebRequest;

    invoke-virtual {v1}, Lcom/unity3d/ads/request/WebRequest;->makeRequest()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/unity3d/ads/request/NetworkIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 94
    .local v10, "response":Ljava/lang/String;
    iget-object v1, p0, Lcom/unity3d/ads/request/WebRequestHandler;->_currentRequest:Lcom/unity3d/ads/request/WebRequest;

    invoke-virtual {v1}, Lcom/unity3d/ads/request/WebRequest;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 96
    .local v7, "data":Landroid/os/Bundle;
    const-string v1, "response"

    invoke-virtual {v7, v1, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "url"

    invoke-virtual {v7, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v1, "responseCode"

    iget-object v2, p0, Lcom/unity3d/ads/request/WebRequestHandler;->_currentRequest:Lcom/unity3d/ads/request/WebRequest;

    invoke-virtual {v2}, Lcom/unity3d/ads/request/WebRequest;->getResponseCode()I

    move-result v2

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 100
    iget-object v1, p0, Lcom/unity3d/ads/request/WebRequestHandler;->_currentRequest:Lcom/unity3d/ads/request/WebRequest;

    invoke-virtual {v1}, Lcom/unity3d/ads/request/WebRequest;->getResponseHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 101
    .local v9, "key":Ljava/lang/String;
    if-eqz v9, :cond_3

    const-string v1, "null"

    invoke-virtual {v9, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 105
    iget-object v1, p0, Lcom/unity3d/ads/request/WebRequestHandler;->_currentRequest:Lcom/unity3d/ads/request/WebRequest;

    invoke-virtual {v1}, Lcom/unity3d/ads/request/WebRequest;->getResponseHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v12, v1, [Ljava/lang/String;

    .line 106
    .local v12, "values":[Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "valueidx":I
    :goto_2
    iget-object v1, p0, Lcom/unity3d/ads/request/WebRequestHandler;->_currentRequest:Lcom/unity3d/ads/request/WebRequest;

    invoke-virtual {v1}, Lcom/unity3d/ads/request/WebRequest;->getResponseHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v11, v1, :cond_4

    .line 107
    iget-object v1, p0, Lcom/unity3d/ads/request/WebRequestHandler;->_currentRequest:Lcom/unity3d/ads/request/WebRequest;

    invoke-virtual {v1}, Lcom/unity3d/ads/request/WebRequest;->getResponseHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v12, v11

    .line 106
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 88
    .end local v7    # "data":Landroid/os/Bundle;
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "response":Ljava/lang/String;
    .end local v11    # "valueidx":I
    .end local v12    # "values":[Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 89
    .local v8, "e":Ljava/lang/Exception;
    :goto_3
    const-string v1, "Error completing request"

    invoke-static {v1, v8}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 90
    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-direct {p0, p1, v2, p2, v0}, Lcom/unity3d/ads/request/WebRequestHandler;->getBundleForFailResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v1, v2}, Lcom/unity3d/ads/request/WebRequestResultReceiver;->send(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 110
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v7    # "data":Landroid/os/Bundle;
    .restart local v9    # "key":Ljava/lang/String;
    .restart local v10    # "response":Ljava/lang/String;
    .restart local v11    # "valueidx":I
    .restart local v12    # "values":[Ljava/lang/String;
    :cond_4
    invoke-virtual {v7, v9, v12}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 113
    .end local v9    # "key":Ljava/lang/String;
    .end local v11    # "valueidx":I
    .end local v12    # "values":[Ljava/lang/String;
    :cond_5
    const/4 v1, 0x1

    move-object/from16 v0, p7

    invoke-virtual {v0, v1, v7}, Lcom/unity3d/ads/request/WebRequestResultReceiver;->send(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 88
    .end local v7    # "data":Landroid/os/Bundle;
    .end local v10    # "response":Ljava/lang/String;
    :catch_1
    move-exception v8

    goto :goto_3

    :catch_2
    move-exception v8

    goto :goto_3
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v13, 0x2

    .line 21
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    .line 22
    .local v8, "data":Landroid/os/Bundle;
    const-string v0, "url"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 23
    .local v1, "url":Ljava/lang/String;
    const-string v0, "url"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 24
    const-string v0, "type"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 25
    .local v2, "type":Ljava/lang/String;
    const-string v0, "type"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 26
    const-string v0, "body"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 27
    .local v4, "body":Ljava/lang/String;
    const-string v0, "body"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 28
    const-string v0, "receiver"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/unity3d/ads/request/WebRequestResultReceiver;

    .line 29
    .local v7, "receiver":Lcom/unity3d/ads/request/WebRequestResultReceiver;
    const-string v0, "receiver"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 30
    const-string v0, "connectTimeout"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 31
    .local v5, "connectTimeout":I
    const-string v0, "connectTimeout"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 32
    const-string v0, "readTimeout"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 33
    .local v6, "readTimeout":I
    const-string v0, "readTimeout"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 35
    const/4 v3, 0x0

    .line 36
    .local v3, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {v8}, Landroid/os/Bundle;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 37
    const-string v0, "There are headers left in data, reading them"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 38
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 41
    .restart local v3    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {v8}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 42
    .local v10, "k":Ljava/lang/String;
    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 43
    .local v11, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 47
    .end local v10    # "k":Ljava/lang/String;
    .end local v11    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v12, 0x1

    if-ne v0, v12, :cond_2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Handling request message: "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, " type="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    move-object v0, p0

    .line 50
    :try_start_0
    invoke-direct/range {v0 .. v7}, Lcom/unity3d/ads/request/WebRequestHandler;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;IILcom/unity3d/ads/request/WebRequestResultReceiver;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_1
    :goto_1
    return-void

    .line 52
    :catch_0
    move-exception v9

    .line 53
    .local v9, "e":Ljava/net/MalformedURLException;
    const-string v0, "Malformed URL"

    invoke-static {v0, v9}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 54
    if-eqz v7, :cond_1

    .line 55
    const-string v0, "Malformed URL"

    invoke-direct {p0, v1, v0, v2, v4}, Lcom/unity3d/ads/request/WebRequestHandler;->getBundleForFailResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v7, v13, v0}, Lcom/unity3d/ads/request/WebRequestResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_1

    .line 59
    .end local v9    # "e":Ljava/net/MalformedURLException;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No implementation for message: "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v12, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 60
    if-eqz v7, :cond_1

    .line 61
    const-string v0, "Invalid Thread Message"

    invoke-direct {p0, v1, v0, v2, v4}, Lcom/unity3d/ads/request/WebRequestHandler;->getBundleForFailResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v7, v13, v0}, Lcom/unity3d/ads/request/WebRequestResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_1
.end method

.method public setCancelStatus(Z)V
    .locals 1
    .param p1, "canceled"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/unity3d/ads/request/WebRequestHandler;->_canceled:Z

    .line 69
    iget-boolean v0, p0, Lcom/unity3d/ads/request/WebRequestHandler;->_canceled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/request/WebRequestHandler;->_currentRequest:Lcom/unity3d/ads/request/WebRequest;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/unity3d/ads/request/WebRequestHandler;->_currentRequest:Lcom/unity3d/ads/request/WebRequest;

    invoke-virtual {v0}, Lcom/unity3d/ads/request/WebRequest;->cancel()V

    .line 72
    :cond_0
    return-void
.end method
