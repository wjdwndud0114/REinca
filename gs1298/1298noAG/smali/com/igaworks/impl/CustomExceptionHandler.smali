.class public Lcom/igaworks/impl/CustomExceptionHandler;
.super Ljava/lang/Object;
.source "CustomExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private defaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/impl/CustomExceptionHandler;->defaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 22
    return-void
.end method

.method public static getThreadId()J
    .locals 4

    .prologue
    .line 25
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 26
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    return-wide v2
.end method

.method public static getThreadSignature()Ljava/lang/String;
    .locals 9

    .prologue
    .line 30
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    .line 31
    .local v6, "t":Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    .line 32
    .local v2, "l":J
    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/Thread;->getPriority()I

    move-result v7

    int-to-long v4, v7

    .line 34
    .local v4, "p":J
    invoke-virtual {v6}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "gname":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":(id)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":(priority)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":(group)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static logThreadSignature()V
    .locals 2

    .prologue
    .line 42
    const-string v0, "ThreadUtils"

    invoke-static {}, Lcom/igaworks/impl/CustomExceptionHandler;->getThreadSignature()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void
.end method

.method public static sleepForInSecs(I)V
    .locals 4
    .param p0, "secs"    # I

    .prologue
    .line 47
    mul-int/lit16 v1, p0, 0x3e8

    int-to-long v2, v1

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "x":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "interrupted"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 23
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 56
    :try_start_0
    new-instance v16, Lorg/json/JSONArray;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONArray;-><init>()V

    .line 58
    .local v16, "thread_info_array":Lorg/json/JSONArray;
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_0
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 60
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Thread;

    .line 62
    .local v5, "key":Ljava/lang/Thread;
    const-string v15, ""

    .line 63
    .local v15, "stringStackTraceElement":Ljava/lang/String;
    const/4 v7, 0x0

    .line 64
    .local v7, "pCount":I
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/lang/StackTraceElement;

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v20, v0

    const/16 v18, 0x0

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    aget-object v14, v17, v18

    .line 66
    .local v14, "ste":Ljava/lang/StackTraceElement;
    if-nez v7, :cond_1

    .line 67
    invoke-virtual {v14}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v15

    .line 71
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 64
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 69
    :cond_1
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v14}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_2

    .line 74
    .end local v14    # "ste":Ljava/lang/StackTraceElement;
    :cond_2
    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    goto :goto_0

    .line 82
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    .end local v5    # "key":Ljava/lang/Thread;
    .end local v7    # "pCount":I
    .end local v15    # "stringStackTraceElement":Ljava/lang/String;
    :cond_3
    new-instance v11, Ljava/io/StringWriter;

    invoke-direct {v11}, Ljava/io/StringWriter;-><init>()V

    .line 83
    .local v11, "result":Ljava/io/Writer;
    new-instance v10, Ljava/io/PrintWriter;

    invoke-direct {v10, v11}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 84
    .local v10, "printWriter":Ljava/io/PrintWriter;
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 87
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 91
    .local v13, "stacktrace":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v6

    .line 98
    .local v6, "length":I
    invoke-virtual {v10}, Ljava/io/PrintWriter;->close()V

    .line 100
    const-string v12, "igaworks"

    .line 102
    .local v12, "search":Ljava/lang/String;
    sget-object v17, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 104
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v9, "pListErr":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 108
    .local v8, "pJObject":Lorg/json/JSONObject;
    const-string v17, "iga_error"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    const-string v17, "exception_reason"

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    const-string v17, "retry_cnt"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 112
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v17

    if-lez v17, :cond_4

    .line 113
    const-string v17, "thread_information"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    :cond_4
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-static {v9}, Lcom/igaworks/impl/CommonFrameworkImpl;->sendCrashReport(Ljava/util/List;)V

    .line 123
    .end local v8    # "pJObject":Lorg/json/JSONObject;
    .end local v9    # "pListErr":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/impl/CustomExceptionHandler;->defaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v6    # "length":I
    .end local v10    # "printWriter":Ljava/io/PrintWriter;
    .end local v11    # "result":Ljava/io/Writer;
    .end local v12    # "search":Ljava/lang/String;
    .end local v13    # "stacktrace":Ljava/lang/String;
    .end local v16    # "thread_info_array":Lorg/json/JSONArray;
    :goto_3
    return-void

    .line 124
    :catch_0
    move-exception v4

    .line 125
    .local v4, "err":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method
