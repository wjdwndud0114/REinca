.class public Lcom/igaworks/IgawDefaultDeeplinkActivity;
.super Landroid/app/Activity;
.source "IgawDefaultDeeplinkActivity.java"


# static fields
.field static IntentForward:Z


# instance fields
.field IgawRedirectActivity:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    sput-boolean v0, Lcom/igaworks/IgawDefaultDeeplinkActivity;->IntentForward:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    const-string v0, "com.unity3d.player.UnityPlayerActivity"

    iput-object v0, p0, Lcom/igaworks/IgawDefaultDeeplinkActivity;->IgawRedirectActivity:Ljava/lang/String;

    return-void
.end method

.method private ParseIntent(Landroid/app/Activity;)V
    .locals 16
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 75
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/igaworks/IgawDefaultDeeplinkActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/igaworks/IgawDefaultDeeplinkActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v12

    const/16 v13, 0x80

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 77
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_1

    .line 78
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 79
    .local v2, "bundle":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    const-string v11, "IgawRedirectActivity"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 80
    iget-object v11, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v12, "IgawRedirectActivity"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/igaworks/IgawDefaultDeeplinkActivity;->IgawRedirectActivity:Ljava/lang/String;

    .line 82
    :cond_0
    if-eqz v2, :cond_1

    const-string v11, "IntentForward"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 83
    iget-object v11, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v12, "IntentForward"

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    sput-boolean v11, Lcom/igaworks/IgawDefaultDeeplinkActivity;->IntentForward:Z

    .line 87
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_1
    const-string v11, "IGAW_QA"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "RedirectActivity: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igaworks/IgawDefaultDeeplinkActivity;->IgawRedirectActivity:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " . IntentForward: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-boolean v13, Lcom/igaworks/IgawDefaultDeeplinkActivity;->IntentForward:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 90
    :try_start_1
    sget-boolean v11, Lcom/igaworks/IgawDefaultDeeplinkActivity;->IntentForward:Z

    if-eqz v11, :cond_7

    .line 92
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 93
    .local v6, "i":Landroid/content/Intent;
    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 94
    .local v7, "iUri":Landroid/net/Uri;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/net/Uri;->isHierarchical()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 95
    const-string v11, "ck"

    invoke-virtual {v7, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 97
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ck="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ck"

    invoke-virtual {v7, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 98
    .local v9, "paramString":Ljava/lang/String;
    const/4 v10, 0x0

    .line 99
    .local v10, "uriString":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 100
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v10

    .line 102
    :cond_2
    invoke-virtual {v7}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-ne v11, v12, :cond_5

    .line 103
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\\?"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 109
    :goto_0
    if-eqz v10, :cond_3

    .line 110
    const-string v11, ""

    invoke-virtual {v10, v9, v11}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 111
    .local v8, "newData":Landroid/net/Uri;
    invoke-virtual {v6, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 116
    .end local v8    # "newData":Landroid/net/Uri;
    .end local v9    # "paramString":Ljava/lang/String;
    .end local v10    # "uriString":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/igaworks/IgawDefaultDeeplinkActivity;->IgawRedirectActivity:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v6, v0, v11}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 118
    const-string v3, "null"

    .line 119
    .local v3, "dl":Ljava/lang/String;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 120
    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 122
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/igaworks/IgawDefaultDeeplinkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "IGAW_QA"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "IgawDefaultDeeplinkActivity Deeplink: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    const/4 v15, 0x1

    invoke-static {v11, v12, v13, v14, v15}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 142
    .end local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v3    # "dl":Ljava/lang/String;
    .end local v6    # "i":Landroid/content/Intent;
    .end local v7    # "iUri":Landroid/net/Uri;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/igaworks/IgawDefaultDeeplinkActivity;->finish()V

    .line 144
    return-void

    .line 104
    .restart local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v6    # "i":Landroid/content/Intent;
    .restart local v7    # "iUri":Landroid/net/Uri;
    .restart local v9    # "paramString":Ljava/lang/String;
    .restart local v10    # "uriString":Ljava/lang/String;
    :cond_5
    if-eqz v10, :cond_6

    :try_start_2
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {v10, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-ne v11, v12, :cond_6

    .line 105
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "&"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 107
    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 124
    .end local v6    # "i":Landroid/content/Intent;
    .end local v7    # "iUri":Landroid/net/Uri;
    .end local v9    # "paramString":Ljava/lang/String;
    .end local v10    # "uriString":Ljava/lang/String;
    :cond_7
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 125
    .restart local v6    # "i":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/igaworks/IgawDefaultDeeplinkActivity;->IgawRedirectActivity:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v6, v0, v11}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 129
    .end local v6    # "i":Landroid/content/Intent;
    :catch_0
    move-exception v5

    .line 130
    .local v5, "e1":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/igaworks/IgawDefaultDeeplinkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "IGAW_QA"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Can not redirect to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/igaworks/IgawDefaultDeeplinkActivity;->IgawRedirectActivity:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ". Launch default activity"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-static {v11, v12, v13, v14, v15}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 131
    const-string v11, "IGAW_QA"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IgawDefaultDeeplinkActivity: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 134
    .restart local v6    # "i":Landroid/content/Intent;
    const/high16 v11, 0x24000000

    invoke-virtual {v6, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 136
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 139
    .end local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v5    # "e1":Ljava/lang/Exception;
    .end local v6    # "i":Landroid/content/Intent;
    :catch_1
    move-exception v4

    .line 140
    .local v4, "e":Ljava/lang/Exception;
    const-string v11, "IGAW_QA"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IgawDefaultDeeplinkActivity Error: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-static {p0}, Lcom/igaworks/IgawCommon;->registerReferrer(Landroid/app/Activity;)V

    .line 49
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 55
    invoke-virtual {p0, p1}, Lcom/igaworks/IgawDefaultDeeplinkActivity;->setIntent(Landroid/content/Intent;)V

    .line 56
    invoke-static {p0}, Lcom/igaworks/IgawCommon;->registerReferrer(Landroid/app/Activity;)V

    .line 57
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 69
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 62
    invoke-direct {p0, p0}, Lcom/igaworks/IgawDefaultDeeplinkActivity;->ParseIntent(Landroid/app/Activity;)V

    .line 63
    return-void
.end method
