.class Lcom/igaworks/impl/CommonFrameworkImpl$9;
.super Ljava/lang/Object;
.source "CommonFrameworkImpl.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/impl/CommonFrameworkImpl;->deeplinkConversion(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/igaworks/util/bolts_task/Continuation",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/impl/CommonFrameworkImpl;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callFromAPI:Z


# direct methods
.method constructor <init>(Lcom/igaworks/impl/CommonFrameworkImpl;Landroid/app/Activity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/impl/CommonFrameworkImpl;

    .prologue
    .line 1471
    iput-object p1, p0, Lcom/igaworks/impl/CommonFrameworkImpl$9;->this$0:Lcom/igaworks/impl/CommonFrameworkImpl;

    iput-object p2, p0, Lcom/igaworks/impl/CommonFrameworkImpl$9;->val$activity:Landroid/app/Activity;

    iput-boolean p3, p0, Lcom/igaworks/impl/CommonFrameworkImpl$9;->val$callFromAPI:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1471
    invoke-virtual {p0, p1}, Lcom/igaworks/impl/CommonFrameworkImpl$9;->then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Void;
    .locals 44
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 1475
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Object;>;"
    const/16 v18, 0x0

    .line 1476
    .local v18, "conversionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/model/DeeplinkConversionItem;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/impl/CommonFrameworkImpl$9;->val$activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v29

    .line 1477
    .local v29, "i":Landroid/content/Intent;
    if-eqz v29, :cond_6

    .line 1479
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/impl/CommonFrameworkImpl$9;->val$activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/igaworks/impl/CommonFrameworkImpl;->setContext(Landroid/content/Context;)V

    .line 1480
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/impl/CommonFrameworkImpl$9;->this$0:Lcom/igaworks/impl/CommonFrameworkImpl;

    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/igaworks/impl/CommonFrameworkImpl;->initAppInfo(Landroid/content/Context;)V

    .line 1481
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v5

    sput-object v5, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    .line 1483
    invoke-virtual/range {v29 .. v29}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v30

    .line 1485
    .local v30, "iUri":Landroid/net/Uri;
    if-eqz v30, :cond_1

    invoke-virtual/range {v30 .. v30}, Landroid/net/Uri;->isHierarchical()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1486
    const-string v5, "ck"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1488
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ck="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "ck"

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 1489
    .local v35, "paramString":Ljava/lang/String;
    const/16 v40, 0x0

    .line 1490
    .local v40, "uriString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/impl/CommonFrameworkImpl$9;->val$activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1491
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/impl/CommonFrameworkImpl$9;->val$activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v40

    .line 1493
    :cond_0
    invoke-virtual/range {v30 .. v30}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v5, v9, :cond_3

    .line 1494
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\\?"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 1500
    :goto_0
    if-eqz v40, :cond_1

    .line 1501
    const-string v5, ""

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v34

    .line 1502
    .local v34, "newData":Landroid/net/Uri;
    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1507
    .end local v34    # "newData":Landroid/net/Uri;
    .end local v35    # "paramString":Ljava/lang/String;
    .end local v40    # "uriString":Ljava/lang/String;
    :cond_1
    if-eqz v30, :cond_2

    invoke-virtual/range {v30 .. v30}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v9, "?"

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1508
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/igaworks/impl/CommonFrameworkImpl$9;->val$callFromAPI:Z

    if-eqz v5, :cond_5

    .line 1509
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v9, "IGAW_QA"

    const-string v10, "Deeplink API: bundle and data are null"

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-static {v5, v9, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1512
    :goto_1
    const/4 v5, 0x0

    .line 1728
    .end local v29    # "i":Landroid/content/Intent;
    .end local v30    # "iUri":Landroid/net/Uri;
    :goto_2
    return-object v5

    .line 1495
    .restart local v29    # "i":Landroid/content/Intent;
    .restart local v30    # "iUri":Landroid/net/Uri;
    .restart local v35    # "paramString":Ljava/lang/String;
    .restart local v40    # "uriString":Ljava/lang/String;
    :cond_3
    if-eqz v40, :cond_4

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v5, v9

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ne v5, v9, :cond_4

    .line 1496
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "&"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    goto :goto_0

    .line 1498
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "&"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    goto :goto_0

    .line 1511
    .end local v35    # "paramString":Ljava/lang/String;
    .end local v40    # "uriString":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v9, "IGAW_QA"

    const-string v10, "OnstartSession deeplink : bundle and data are null"

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-static {v5, v9, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 1723
    .end local v29    # "i":Landroid/content/Intent;
    .end local v30    # "iUri":Landroid/net/Uri;
    :catch_0
    move-exception v22

    .line 1724
    .local v22, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v9, "IGAW_QA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "@deeplinkConversion API Error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v5, v9, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1728
    .end local v22    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_3
    const/4 v5, 0x0

    goto :goto_2

    .line 1515
    .restart local v29    # "i":Landroid/content/Intent;
    .restart local v30    # "iUri":Landroid/net/Uri;
    :cond_7
    :try_start_1
    const-string v39, ""

    .line 1517
    .local v39, "uriStr":Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v39

    .line 1518
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v9, "IGAW_QA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "uriStr from intent data: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v39

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    const/4 v12, 0x1

    invoke-static {v5, v9, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    .line 1520
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http://igaworks.com"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v9, 0x3f

    move-object/from16 v0, v39

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->length()I

    move-result v10

    move-object/from16 v0, v39

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v30

    .line 1525
    :goto_4
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/igaworks/impl/CommonFrameworkImpl$9;->val$callFromAPI:Z

    if-eqz v5, :cond_9

    .line 1526
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "IGAW_QA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Deeplink API >> iUri is null >>"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-nez v30, :cond_8

    const/4 v5, 0x1

    :goto_5
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-static {v9, v10, v5, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1531
    :goto_6
    if-eqz v30, :cond_6

    .line 1533
    const/4 v6, -0x1

    .line 1535
    .local v6, "conversionKey":I
    const/4 v7, 0x0

    .line 1537
    .local v7, "commerceClickID":Ljava/lang/String;
    const/16 v31, 0x0

    .line 1538
    .local v31, "igaw_deeplink_cvr":Ljava/lang/Boolean;
    const/16 v33, 0x0

    .line 1539
    .local v33, "isFacebookCpi":Ljava/lang/Boolean;
    const-wide/16 v36, -0x1

    .line 1540
    .local v36, "session_no":J
    const/16 v32, 0x0

    .line 1541
    .local v32, "igaw_eng":Ljava/lang/Boolean;
    const-wide/16 v42, -0x1

    .line 1542
    .local v42, "x":J
    const-string v38, ""

    .line 1543
    .local v38, "sub_conversion_key":Ljava/lang/String;
    const-string v21, ""
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2

    .line 1544
    .local v21, "deeplink_uri":Ljava/lang/String;
    move-object/from16 v21, v39

    .line 1547
    :try_start_4
    const-string v5, "ck"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_2

    move-result v6

    .line 1553
    :goto_7
    :try_start_5
    const-string v5, "cid"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v7

    .line 1558
    :goto_8
    :try_start_6
    const-string v5, "igaw_deeplink_cvr"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object v31

    .line 1563
    :goto_9
    :try_start_7
    const-string v5, "isFacebookCpi"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_2

    move-result-object v33

    .line 1568
    :goto_a
    :try_start_8
    const-string v5, "igaw_eng"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_2

    move-result-object v32

    .line 1573
    :goto_b
    :try_start_9
    const-string v5, "sn"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_2

    move-result-wide v36

    .line 1578
    :goto_c
    :try_start_a
    const-string v5, "sub_referral"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_2

    move-result-object v38

    .line 1585
    :goto_d
    if-gez v6, :cond_b

    const/4 v5, 0x0

    goto/16 :goto_2

    .line 1521
    .end local v6    # "conversionKey":I
    .end local v7    # "commerceClickID":Ljava/lang/String;
    .end local v21    # "deeplink_uri":Ljava/lang/String;
    .end local v31    # "igaw_deeplink_cvr":Ljava/lang/Boolean;
    .end local v32    # "igaw_eng":Ljava/lang/Boolean;
    .end local v33    # "isFacebookCpi":Ljava/lang/Boolean;
    .end local v36    # "session_no":J
    .end local v38    # "sub_conversion_key":Ljava/lang/String;
    .end local v42    # "x":J
    :catch_1
    move-exception v22

    .line 1522
    .restart local v22    # "e":Ljava/lang/Exception;
    const/16 v30, 0x0

    goto/16 :goto_4

    .line 1526
    .end local v22    # "e":Ljava/lang/Exception;
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 1528
    :cond_9
    :try_start_b
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "IGAW_QA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OnStartSession: deeplink >> iUri is null >>"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-nez v30, :cond_a

    const/4 v5, 0x1

    :goto_e
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-static {v9, v10, v5, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_6

    .line 1725
    .end local v29    # "i":Landroid/content/Intent;
    .end local v30    # "iUri":Landroid/net/Uri;
    .end local v39    # "uriStr":Ljava/lang/String;
    :catch_2
    move-exception v15

    .line 1726
    .local v15, "Err":Ljava/lang/OutOfMemoryError;
    const-string v5, "IGAW_QA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OOM Error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v15}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1528
    .end local v15    # "Err":Ljava/lang/OutOfMemoryError;
    .restart local v29    # "i":Landroid/content/Intent;
    .restart local v30    # "iUri":Landroid/net/Uri;
    .restart local v39    # "uriStr":Ljava/lang/String;
    :cond_a
    const/4 v5, 0x0

    goto :goto_e

    .line 1548
    .restart local v6    # "conversionKey":I
    .restart local v7    # "commerceClickID":Ljava/lang/String;
    .restart local v21    # "deeplink_uri":Ljava/lang/String;
    .restart local v31    # "igaw_deeplink_cvr":Ljava/lang/Boolean;
    .restart local v32    # "igaw_eng":Ljava/lang/Boolean;
    .restart local v33    # "isFacebookCpi":Ljava/lang/Boolean;
    .restart local v36    # "session_no":J
    .restart local v38    # "sub_conversion_key":Ljava/lang/String;
    .restart local v42    # "x":J
    :catch_3
    move-exception v23

    .line 1549
    .local v23, "e1":Ljava/lang/Exception;
    const/4 v6, -0x1

    goto/16 :goto_7

    .line 1554
    .end local v23    # "e1":Ljava/lang/Exception;
    :catch_4
    move-exception v24

    .line 1555
    .local v24, "e2":Ljava/lang/Exception;
    const/4 v7, 0x0

    goto/16 :goto_8

    .line 1559
    .end local v24    # "e2":Ljava/lang/Exception;
    :catch_5
    move-exception v25

    .line 1560
    .local v25, "e3":Ljava/lang/Exception;
    const/16 v31, 0x0

    goto/16 :goto_9

    .line 1564
    .end local v25    # "e3":Ljava/lang/Exception;
    :catch_6
    move-exception v25

    .line 1565
    .restart local v25    # "e3":Ljava/lang/Exception;
    const/16 v33, 0x0

    goto/16 :goto_a

    .line 1569
    .end local v25    # "e3":Ljava/lang/Exception;
    :catch_7
    move-exception v25

    .line 1570
    .restart local v25    # "e3":Ljava/lang/Exception;
    const/16 v32, 0x0

    goto :goto_b

    .line 1574
    .end local v25    # "e3":Ljava/lang/Exception;
    :catch_8
    move-exception v26

    .line 1575
    .local v26, "e4":Ljava/lang/Exception;
    const-wide/16 v36, -0x1

    goto :goto_c

    .line 1579
    .end local v26    # "e4":Ljava/lang/Exception;
    :catch_9
    move-exception v27

    .line 1580
    .local v27, "e5":Ljava/lang/Exception;
    :try_start_c
    const-string v38, ""
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_d

    .line 1588
    .end local v27    # "e5":Ljava/lang/Exception;
    :cond_b
    :try_start_d
    sget-object v5, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    invoke-virtual {v5}, Lcom/igaworks/core/RequestParameter;->getAllowDuplicationConversions()Ljava/util/ArrayList;

    move-result-object v14

    .line 1589
    .local v14, "AllowDuplicationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v14, :cond_d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ""

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1590
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_c
    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1591
    .local v4, "item":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_2

    move-result v9

    if-eqz v9, :cond_c

    .line 1593
    :try_start_e
    const-string v9, ";"

    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 1594
    .local v16, "childCK":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 1595
    .local v17, "ck":I
    sget-object v9, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/igaworks/core/RequestParameter;->removeRetainedConversionCache(I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_2

    goto :goto_f

    .line 1596
    .end local v16    # "childCK":Ljava/lang/String;
    .end local v17    # "ck":I
    :catch_a
    move-exception v22

    .line 1597
    .restart local v22    # "e":Ljava/lang/Exception;
    :try_start_f
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_f} :catch_2

    goto :goto_f

    .line 1624
    .end local v4    # "item":Ljava/lang/String;
    .end local v14    # "AllowDuplicationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v22    # "e":Ljava/lang/Exception;
    :catch_b
    move-exception v23

    .line 1625
    .restart local v23    # "e1":Ljava/lang/Exception;
    :try_start_10
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_10} :catch_2

    .line 1629
    .end local v23    # "e1":Ljava/lang/Exception;
    :goto_10
    :try_start_11
    const-string v5, "IGAW_QA"

    const-string v9, "Deeplink conversion >> ck = %s; cid = %s; igaw_deeplink_cvr = %s ; session_no = %s, sub_conversion_key = %s, isFacebookCpi = %s, igaw_eng = %s "

    const/4 v10, 0x7

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 1630
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v7, v10, v11

    const/4 v11, 0x2

    aput-object v31, v10, v11

    const/4 v11, 0x3

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    aput-object v38, v10, v11

    const/4 v11, 0x5

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x6

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 1629
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11 .. :try_end_11} :catch_2

    .line 1634
    :goto_11
    :try_start_12
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v9, "IGAW_QA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "deeplink conversion >> query string extra : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {v30 .. v30}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    const/4 v12, 0x1

    invoke-static {v5, v9, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1637
    if-eqz v33, :cond_10

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v9, 0x1

    if-ne v5, v9, :cond_10

    .line 1639
    sget-object v5, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    invoke-virtual {v5}, Lcom/igaworks/core/RequestParameter;->getProcessedConversions()Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1640
    const-string v5, "IGAW_QA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Deeplinking: Thirdparty conversion key: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " counted by Igaworks already."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_12 .. :try_end_12} :catch_2

    .line 1641
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 1604
    .restart local v14    # "AllowDuplicationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_d
    :try_start_13
    # getter for: Lcom/igaworks/impl/CommonFrameworkImpl;->TempProcessedConversionList:Ljava/util/List;
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->access$400()Ljava/util/List;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 1605
    # getter for: Lcom/igaworks/impl/CommonFrameworkImpl;->TempProcessedConversionList:Ljava/util/List;
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->access$400()Ljava/util/List;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1610
    const-wide/16 v10, 0x9c4

    invoke-static {v10, v11}, Lcom/igaworks/util/bolts_task/Task;->delay(J)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v5

    new-instance v9, Lcom/igaworks/impl/CommonFrameworkImpl$9$1;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/igaworks/impl/CommonFrameworkImpl$9$1;-><init>(Lcom/igaworks/impl/CommonFrameworkImpl$9;)V

    invoke-virtual {v5, v9}, Lcom/igaworks/util/bolts_task/Task;->continueWith(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    goto/16 :goto_10

    .line 1607
    :cond_e
    const-string v5, "IGAW_QA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Deeplink conversionKey "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " exists in cache >> Skip"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_13 .. :try_end_13} :catch_2

    .line 1608
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 1643
    .end local v14    # "AllowDuplicationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_f
    :try_start_14
    sget-object v5, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    invoke-virtual {v5, v6}, Lcom/igaworks/core/RequestParameter;->setProcessedConversions(I)V

    .line 1650
    :cond_10
    sget-object v5, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    invoke-virtual {v5}, Lcom/igaworks/core/RequestParameter;->getADBrixUserNo()J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v5, v10, v12

    if-lez v5, :cond_18

    .line 1651
    sget-object v5, Lcom/igaworks/impl/CommonFrameworkImpl;->processedClickID:Ljava/util/List;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 1653
    if-eqz v7, :cond_12

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_12

    const/4 v5, -0x1

    if-le v6, v5, :cond_12

    .line 1656
    if-nez v18, :cond_11

    .line 1657
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .end local v18    # "conversionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/model/DeeplinkConversionItem;>;"
    .local v19, "conversionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/model/DeeplinkConversionItem;>;"
    move-object/from16 v18, v19

    .line 1660
    .end local v19    # "conversionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/model/DeeplinkConversionItem;>;"
    .restart local v18    # "conversionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/model/DeeplinkConversionItem;>;"
    :cond_11
    new-instance v4, Lcom/igaworks/model/DeeplinkConversionItem;

    const/4 v5, -0x1

    invoke-virtual/range {v30 .. v30}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/igaworks/model/DeeplinkConversionItem;-><init>(IILjava/lang/String;Ljava/lang/String;II)V

    .line 1661
    .local v4, "item":Lcom/igaworks/model/DeeplinkConversionItem;
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1664
    .end local v4    # "item":Lcom/igaworks/model/DeeplinkConversionItem;
    :cond_12
    sget-object v5, Lcom/igaworks/impl/CommonFrameworkImpl;->processedClickID:Ljava/util/List;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1667
    :cond_13
    if-eqz v18, :cond_14

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_14

    .line 1668
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v9, "IGAW_QA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "deeplink Conversion - count : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    const/4 v12, 0x1

    invoke-static {v5, v9, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1669
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/impl/CommonFrameworkImpl$9;->this$0:Lcom/igaworks/impl/CommonFrameworkImpl;

    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/igaworks/impl/CommonFrameworkImpl;->getHttpManager(Landroid/content/Context;)Lcom/igaworks/net/CommonHttpManager;

    move-result-object v5

    sput-object v5, Lcom/igaworks/impl/CommonFrameworkImpl;->httpManager:Lcom/igaworks/net/CommonHttpManager;

    .line 1670
    sget-object v5, Lcom/igaworks/impl/CommonFrameworkImpl;->httpManager:Lcom/igaworks/net/CommonHttpManager;

    sget-object v9, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v10

    move-object/from16 v0, v18

    invoke-virtual {v5, v9, v10, v0}, Lcom/igaworks/net/CommonHttpManager;->conversionForDeeplink(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_14 .. :try_end_14} :catch_2

    .line 1678
    :cond_14
    :goto_12
    if-lez v6, :cond_15

    if-eqz v31, :cond_15

    :try_start_15
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v9, 0x1

    if-eq v5, v9, :cond_17

    :cond_15
    if-lez v6, :cond_16

    if-eqz v33, :cond_16

    .line 1679
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_17

    :cond_16
    if-lez v6, :cond_6

    if-eqz v32, :cond_6

    .line 1680
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v9, 0x1

    if-ne v5, v9, :cond_6

    .line 1682
    :cond_17
    sget-object v5, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    invoke-virtual {v5, v6}, Lcom/igaworks/core/RequestParameter;->setProcessedConversions(I)V

    .line 1692
    sget-object v5, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    invoke-virtual {v5}, Lcom/igaworks/core/RequestParameter;->getADBrixUserNo()J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v5, v10, v12

    if-lez v5, :cond_19

    .line 1693
    new-instance v20, Lorg/json/JSONObject;

    invoke-direct/range {v20 .. v20}, Lorg/json/JSONObject;-><init>()V

    .line 1694
    .local v20, "deeplink_info":Lorg/json/JSONObject;
    const-string v5, "session_no"

    move-object/from16 v0, v20

    move-wide/from16 v1, v36

    invoke-virtual {v0, v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1695
    const-string v5, "conversion_key"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1696
    const-string v5, "deeplink_uri"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1697
    const-string v5, "sub_conversion_key"

    move-object/from16 v0, v20

    move-object/from16 v1, v38

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1698
    new-instance v8, Lcom/igaworks/model/DeeplinkReEngagementConversion;

    const/4 v9, -0x1

    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v10, v6

    invoke-direct/range {v8 .. v13}, Lcom/igaworks/model/DeeplinkReEngagementConversion;-><init>(IILjava/lang/String;II)V

    .line 1699
    .local v8, "dlReEngMntConversion":Lcom/igaworks/model/DeeplinkReEngagementConversion;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/impl/CommonFrameworkImpl$9;->this$0:Lcom/igaworks/impl/CommonFrameworkImpl;

    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/igaworks/impl/CommonFrameworkImpl;->getHttpManager(Landroid/content/Context;)Lcom/igaworks/net/CommonHttpManager;

    move-result-object v5

    sget-object v9, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v5, v9, v10, v8}, Lcom/igaworks/net/CommonHttpManager;->ReEngagementConversion(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Lcom/igaworks/model/DeeplinkReEngagementConversion;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_15 .. :try_end_15} :catch_2

    goto/16 :goto_3

    .line 1715
    .end local v8    # "dlReEngMntConversion":Lcom/igaworks/model/DeeplinkReEngagementConversion;
    .end local v20    # "deeplink_info":Lorg/json/JSONObject;
    :catch_c
    move-exception v28

    .line 1716
    .local v28, "exception":Ljava/lang/Exception;
    :try_start_16
    const-string v5, "IGAW_QA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ReEngagementConversion Error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1673
    .end local v28    # "exception":Ljava/lang/Exception;
    :cond_18
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v9, "IGAW_QA"

    const-string v10, "Skip Legacy deeplink"

    const/4 v11, 0x2

    const/4 v12, 0x1

    invoke-static {v5, v9, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_16 .. :try_end_16} :catch_2

    goto/16 :goto_12

    .line 1701
    :cond_19
    :try_start_17
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v9, "IGAW_QA"

    const-string v10, "Skip ReEngagement Deeplink"

    const/4 v11, 0x2

    const/4 v12, 0x1

    invoke-static {v5, v9, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_17 .. :try_end_17} :catch_2

    goto/16 :goto_3

    .line 1631
    :catch_d
    move-exception v5

    goto/16 :goto_11
.end method
