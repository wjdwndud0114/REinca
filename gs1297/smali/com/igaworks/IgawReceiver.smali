.class public Lcom/igaworks/IgawReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IgawReceiver.java"


# instance fields
.field private final REFERRER:Ljava/lang/String;

.field private conversion_key:I

.field private session_no:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 23
    const-string v0, "referrer"

    iput-object v0, p0, Lcom/igaworks/IgawReceiver;->REFERRER:Ljava/lang/String;

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/igaworks/IgawReceiver;->conversion_key:I

    .line 25
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/igaworks/IgawReceiver;->session_no:J

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 27
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 32
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 33
    .local v6, "action":Ljava/lang/String;
    const-string v23, "IGAW_QA"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "IgawReceiver onReceive() >> action : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x3

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 35
    const-string v23, "com.android.vending.INSTALL_REFERRER"

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 38
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v16

    .line 40
    .local v16, "parameter":Landroid/os/Bundle;
    const-string v22, ""

    .line 42
    .local v22, "wholeParam":Ljava/lang/String;
    if-eqz v16, :cond_1

    .line 43
    invoke-virtual/range {v16 .. v16}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v18

    .line 44
    .local v18, "referrerParams":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v18, :cond_2

    .line 46
    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_0
    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_2

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 48
    .local v13, "item":Ljava/lang/String;
    const-string v24, "referrer"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 49
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto :goto_0

    .line 57
    .end local v13    # "item":Ljava/lang/String;
    .end local v18    # "referrerParams":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    const-string v23, "IGAW_QA"

    const-string v24, "IgawReceiver onReceive() >> referrer paramter is null >> wholeParam is empty"

    const/16 v25, 0x3

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    :cond_2
    const-string v23, "IGAW_QA"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "IgawReceiver onReceive() >> referrer param = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x3

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    if-eqz v16, :cond_9

    const-string v23, "referrer"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 63
    const-string v23, "referrer"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 64
    .local v17, "referrer":Ljava/lang/String;
    const-string v23, "IGAW_QA"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "IgawReceiver onReceive() >> referrer : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x3

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 65
    const-string v10, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 67
    .local v10, "decodedReferrer":Ljava/lang/String;
    :try_start_1
    const-string v23, "utf-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 69
    const-string v23, "%3D"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_3

    const-string v23, "%26"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 70
    :cond_3
    const-string v23, "%3D"

    const-string v24, "="

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 71
    const-string v23, "%26"

    const-string v24, "&"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 74
    :cond_4
    const-string v23, "IGAW_QA"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "IgawReceiver onReceive() >> decodedReferrer : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x3

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 76
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "http://referrer.ad-brix.com?"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v19

    .line 78
    .local v19, "referrerUri":Landroid/net/Uri;
    const/4 v9, 0x0

    .line 81
    .local v9, "ckStr":Ljava/lang/String;
    :try_start_2
    const-string v23, "ck"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a

    move-result-object v9

    .line 85
    :goto_1
    if-eqz v9, :cond_5

    .line 87
    :try_start_3
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/igaworks/IgawReceiver;->conversion_key:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 93
    :cond_5
    :goto_2
    const/16 v20, 0x0

    .line 96
    .local v20, "snStr":Ljava/lang/String;
    :try_start_4
    const-string v23, "sn"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9

    move-result-object v20

    .line 100
    :goto_3
    if-eqz v20, :cond_6

    .line 102
    :try_start_5
    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/igaworks/IgawReceiver;->session_no:J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 107
    :cond_6
    :goto_4
    :try_start_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/igaworks/IgawReceiver;->conversion_key:I

    move/from16 v23, v0

    if-lez v23, :cond_7

    .line 108
    move-object/from16 v0, p0

    iget v0, v0, Lcom/igaworks/IgawReceiver;->conversion_key:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/igaworks/IgawReceiver;->session_no:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move-wide/from16 v2, v24

    move-object/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/dao/ReferralInfoDAO;->setReferralInfo(Landroid/content/Context;IJLjava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 120
    .end local v9    # "ckStr":Ljava/lang/String;
    .end local v10    # "decodedReferrer":Ljava/lang/String;
    .end local v17    # "referrer":Ljava/lang/String;
    .end local v19    # "referrerUri":Landroid/net/Uri;
    .end local v20    # "snStr":Ljava/lang/String;
    :cond_7
    :goto_5
    :try_start_7
    const-string v23, "IGAW_QA"

    const-string v24, "IgawReceiver onReceive() >> Forward INSTALL_REFERRER start..."

    const/16 v25, 0x3

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 124
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    new-instance v24, Landroid/content/ComponentName;

    const-string v25, "com.igaworks.IgawReceiver"

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v25, 0x80

    invoke-virtual/range {v23 .. v25}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    .line 127
    .local v7, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v7, :cond_8

    .line 129
    iget-object v8, v7, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 131
    .local v8, "bundle":Landroid/os/Bundle;
    if-eqz v8, :cond_8

    .line 133
    invoke-virtual {v8}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v15

    .line 135
    .local v15, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v15, :cond_8

    .line 137
    const-string v23, "IGAW_QA"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "IgawReceiver onReceive() >> Forward INSTALL_REFERRER count : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface {v15}, Ljava/util/Set;->size()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x3

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 140
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 142
    .local v12, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v12, :cond_8

    .line 144
    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_8

    .line 145
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 146
    .local v14, "k":Ljava/lang/String;
    invoke-virtual {v8, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 147
    .local v21, "v":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/BroadcastReceiver;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 149
    const-string v23, "IGAW_QA"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "IgawReceiver onReceive() >> Forward INSTALL_REFERRER to "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x3

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_6

    .line 156
    .end local v7    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v8    # "bundle":Landroid/os/Bundle;
    .end local v12    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v14    # "k":Ljava/lang/String;
    .end local v15    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v21    # "v":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 157
    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_9
    const-string v23, "IGAW_QA"

    const-string v24, "IgawReceiver onReceive() >> No receiver to forward"

    const/16 v25, 0x2

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 174
    .end local v6    # "action":Ljava/lang/String;
    .end local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v16    # "parameter":Landroid/os/Bundle;
    .end local v22    # "wholeParam":Ljava/lang/String;
    :cond_8
    :goto_7
    return-void

    .line 88
    .restart local v6    # "action":Ljava/lang/String;
    .restart local v9    # "ckStr":Ljava/lang/String;
    .restart local v10    # "decodedReferrer":Ljava/lang/String;
    .restart local v16    # "parameter":Landroid/os/Bundle;
    .restart local v17    # "referrer":Ljava/lang/String;
    .restart local v19    # "referrerUri":Landroid/net/Uri;
    .restart local v22    # "wholeParam":Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 89
    .local v11, "e":Ljava/lang/Exception;
    const/16 v23, -0x1

    :try_start_a
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/igaworks/IgawReceiver;->conversion_key:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_2

    .line 112
    .end local v9    # "ckStr":Ljava/lang/String;
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v19    # "referrerUri":Landroid/net/Uri;
    :catch_2
    move-exception v11

    .line 113
    .restart local v11    # "e":Ljava/lang/Exception;
    :try_start_b
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_5

    .line 170
    .end local v6    # "action":Ljava/lang/String;
    .end local v10    # "decodedReferrer":Ljava/lang/String;
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v16    # "parameter":Landroid/os/Bundle;
    .end local v17    # "referrer":Ljava/lang/String;
    .end local v22    # "wholeParam":Ljava/lang/String;
    :catch_3
    move-exception v11

    .line 171
    .restart local v11    # "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 103
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v6    # "action":Ljava/lang/String;
    .restart local v9    # "ckStr":Ljava/lang/String;
    .restart local v10    # "decodedReferrer":Ljava/lang/String;
    .restart local v16    # "parameter":Landroid/os/Bundle;
    .restart local v17    # "referrer":Ljava/lang/String;
    .restart local v19    # "referrerUri":Landroid/net/Uri;
    .restart local v20    # "snStr":Ljava/lang/String;
    .restart local v22    # "wholeParam":Ljava/lang/String;
    :catch_4
    move-exception v11

    .line 104
    .restart local v11    # "e":Ljava/lang/Exception;
    const-wide/16 v24, -0x1

    :try_start_c
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/igaworks/IgawReceiver;->session_no:J
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    goto/16 :goto_4

    .line 117
    .end local v9    # "ckStr":Ljava/lang/String;
    .end local v10    # "decodedReferrer":Ljava/lang/String;
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v17    # "referrer":Ljava/lang/String;
    .end local v19    # "referrerUri":Landroid/net/Uri;
    .end local v20    # "snStr":Ljava/lang/String;
    :cond_9
    :try_start_d
    const-string v23, "IGAW_QA"

    const-string v24, "IgawReceiver onReceive() >> referrer paramter is null"

    const/16 v25, 0x3

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 158
    :catch_5
    move-exception v11

    .line 159
    .local v11, "e":Ljava/lang/InstantiationException;
    const-string v23, "IGAW_QA"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "IgawReceiver onReceive() >> Forward INSTALL_REFERRER error : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v11}, Ljava/lang/InstantiationException;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_7

    .line 160
    .end local v11    # "e":Ljava/lang/InstantiationException;
    :catch_6
    move-exception v11

    .line 161
    .local v11, "e":Ljava/lang/IllegalAccessException;
    const-string v23, "IGAW_QA"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "IgawReceiver onReceive() >> Forward INSTALL_REFERRER error : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v11}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_7

    .line 162
    .end local v11    # "e":Ljava/lang/IllegalAccessException;
    :catch_7
    move-exception v11

    .line 163
    .local v11, "e":Ljava/lang/ClassNotFoundException;
    const-string v23, "IGAW_QA"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "IgawReceiver onReceive() >> Forward INSTALL_REFERRER error : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v11}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_7

    .line 164
    .end local v11    # "e":Ljava/lang/ClassNotFoundException;
    :catch_8
    move-exception v11

    .line 165
    .local v11, "e":Ljava/lang/Exception;
    const-string v23, "IGAW_QA"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "IgawReceiver onReceive() >> Forward INSTALL_REFERRER error : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    goto/16 :goto_7

    .line 97
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v9    # "ckStr":Ljava/lang/String;
    .restart local v10    # "decodedReferrer":Ljava/lang/String;
    .restart local v17    # "referrer":Ljava/lang/String;
    .restart local v19    # "referrerUri":Landroid/net/Uri;
    .restart local v20    # "snStr":Ljava/lang/String;
    :catch_9
    move-exception v23

    goto/16 :goto_3

    .line 82
    .end local v20    # "snStr":Ljava/lang/String;
    :catch_a
    move-exception v23

    goto/16 :goto_1
.end method
