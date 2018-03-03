.class public Lcom/igaworks/core/AdvertisingIdClient;
.super Ljava/lang/Object;
.source "AdvertisingIdClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/igaworks/core/AdvertisingIdClient$AdvertisingInterface;,
        Lcom/igaworks/core/AdvertisingIdClient$AdvertisingConnection;,
        Lcom/igaworks/core/AdvertisingIdClient$AdInfo;,
        Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;
    }
.end annotation


# static fields
.field private static adInfo:Lcom/igaworks/core/AdvertisingIdClient$AdInfo;

.field private static adidListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;",
            ">;"
        }
    .end annotation
.end field

.field private static onBind:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Lcom/igaworks/core/AdvertisingIdClient;->onBind:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdvertisingIdInfo(Landroid/content/Context;Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;)Lcom/igaworks/core/AdvertisingIdClient$AdInfo;
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 109
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object p0

    .line 112
    :goto_0
    :try_start_1
    sget-object v15, Lcom/igaworks/core/AdvertisingIdClient;->adInfo:Lcom/igaworks/core/AdvertisingIdClient$AdInfo;

    if-eqz v15, :cond_2

    .line 114
    if-eqz p1, :cond_0

    .line 115
    sget-object v15, Lcom/igaworks/core/AdvertisingIdClient;->adInfo:Lcom/igaworks/core/AdvertisingIdClient$AdInfo;

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;->onResult(Lcom/igaworks/core/AdvertisingIdClient$AdInfo;)V

    .line 118
    :cond_0
    sget-object v15, Lcom/igaworks/core/AdvertisingIdClient;->adInfo:Lcom/igaworks/core/AdvertisingIdClient$AdInfo;

    .line 240
    :cond_1
    :goto_1
    return-object v15

    .line 122
    :cond_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v15

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v16

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 123
    if-eqz p1, :cond_3

    .line 124
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;->onResult(Lcom/igaworks/core/AdvertisingIdClient$AdInfo;)V

    .line 126
    :cond_3
    new-instance v15, Ljava/lang/IllegalStateException;

    const-string v16, "Cannot be called from the main thread"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 237
    :catch_0
    move-exception v9

    .line 238
    .local v9, "e":Ljava/lang/Exception;
    if-eqz v9, :cond_4

    .line 239
    const-string v15, "IGAW_QA"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "AdvertisingIdClient Error:  "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-static {v0, v15, v1, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 240
    :cond_4
    const/4 v15, 0x0

    goto :goto_1

    .line 130
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .local v13, "pm":Landroid/content/pm/PackageManager;
    const-string v15, "com.android.vending"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 139
    :try_start_3
    sget-boolean v15, Lcom/igaworks/core/AdvertisingIdClient;->onBind:Z

    if-nez v15, :cond_e

    .line 141
    const/4 v15, 0x1

    sput-boolean v15, Lcom/igaworks/core/AdvertisingIdClient;->onBind:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 144
    :try_start_4
    new-instance v8, Lcom/igaworks/core/AdvertisingIdClient$AdvertisingConnection;

    const/4 v15, 0x0

    invoke-direct {v8, v15}, Lcom/igaworks/core/AdvertisingIdClient$AdvertisingConnection;-><init>(Lcom/igaworks/core/AdvertisingIdClient$1;)V

    .line 145
    .local v8, "connection":Lcom/igaworks/core/AdvertisingIdClient$AdvertisingConnection;
    new-instance v11, Landroid/content/Intent;

    const-string v15, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v11, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    .local v11, "intent":Landroid/content/Intent;
    const-string v15, "com.google.android.gms"

    invoke-virtual {v11, v15}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v8, v15}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v15

    if-eqz v15, :cond_a

    .line 151
    :try_start_5
    new-instance v7, Lcom/igaworks/core/AdvertisingIdClient$AdvertisingInterface;

    invoke-virtual {v8}, Lcom/igaworks/core/AdvertisingIdClient$AdvertisingConnection;->getBinder()Landroid/os/IBinder;

    move-result-object v15

    invoke-direct {v7, v15}, Lcom/igaworks/core/AdvertisingIdClient$AdvertisingInterface;-><init>(Landroid/os/IBinder;)V

    .line 152
    .local v7, "adInterface":Lcom/igaworks/core/AdvertisingIdClient$AdvertisingInterface;
    new-instance v15, Lcom/igaworks/core/AdvertisingIdClient$AdInfo;

    invoke-virtual {v7}, Lcom/igaworks/core/AdvertisingIdClient$AdvertisingInterface;->getId()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/igaworks/core/AdvertisingIdClient$AdvertisingInterface;->isLimitAdTrackingEnabled(Z)Z

    move-result v17

    invoke-direct/range {v15 .. v17}, Lcom/igaworks/core/AdvertisingIdClient$AdInfo;-><init>(Ljava/lang/String;Z)V

    sput-object v15, Lcom/igaworks/core/AdvertisingIdClient;->adInfo:Lcom/igaworks/core/AdvertisingIdClient$AdInfo;

    .line 154
    sget-object v15, Lcom/igaworks/core/AdvertisingIdClient;->adInfo:Lcom/igaworks/core/AdvertisingIdClient$AdInfo;

    invoke-virtual {v15}, Lcom/igaworks/core/AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v6

    .line 156
    .local v6, "adId":Ljava/lang/String;
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_6

    .line 157
    move-object/from16 v5, p0

    .line 158
    .local v5, "_context":Landroid/content/Context;
    new-instance v15, Ljava/lang/Thread;

    new-instance v16, Lcom/igaworks/core/AdvertisingIdClient$1;

    move-object/from16 v0, v16

    invoke-direct {v0, v5, v6}, Lcom/igaworks/core/AdvertisingIdClient$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct/range {v15 .. v16}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 167
    invoke-virtual {v15}, Ljava/lang/Thread;->start()V

    .line 184
    .end local v5    # "_context":Landroid/content/Context;
    :cond_6
    sget-object v15, Lcom/igaworks/core/AdvertisingIdClient;->adInfo:Lcom/igaworks/core/AdvertisingIdClient$AdInfo;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 188
    :try_start_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 189
    const/16 v16, 0x0

    sput-boolean v16, Lcom/igaworks/core/AdvertisingIdClient;->onBind:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 198
    const/16 v16, 0x0

    :try_start_7
    sput-boolean v16, Lcom/igaworks/core/AdvertisingIdClient;->onBind:Z

    .line 200
    const-string v16, "IGAW_QA"

    const-string v17, "onBind > adid request complete, send callback request to listeners."

    const/16 v18, 0x3

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 205
    if-eqz p1, :cond_7

    .line 206
    :try_start_8
    sget-object v16, Lcom/igaworks/core/AdvertisingIdClient;->adInfo:Lcom/igaworks/core/AdvertisingIdClient$AdInfo;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;->onResult(Lcom/igaworks/core/AdvertisingIdClient$AdInfo;)V

    .line 209
    :cond_7
    sget-object v16, Lcom/igaworks/core/AdvertisingIdClient;->adidListeners:Ljava/util/List;

    if-eqz v16, :cond_1

    sget-object v16, Lcom/igaworks/core/AdvertisingIdClient;->adidListeners:Ljava/util/List;

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    if-lez v16, :cond_1

    .line 211
    new-instance v14, Ljava/util/ArrayList;

    sget-object v16, Lcom/igaworks/core/AdvertisingIdClient;->adidListeners:Ljava/util/List;

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 212
    .local v14, "tList":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;>;"
    const-string v16, "IGAW_QA"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onBind > adidListeners size : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Lcom/igaworks/core/AdvertisingIdClient;->adidListeners:Ljava/util/List;

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x3

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 213
    sget-object v16, Lcom/igaworks/core/AdvertisingIdClient;->adidListeners:Ljava/util/List;

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V

    .line 214
    const-string v16, "IGAW_QA"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onBind > adidListeners size(after clear) : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Lcom/igaworks/core/AdvertisingIdClient;->adidListeners:Ljava/util/List;

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x3

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 215
    const-string v16, "IGAW_QA"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onBind > tList size : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x3

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 216
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;

    .line 217
    .local v12, "item":Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;
    const-string v17, "IGAW_QA"

    const-string v18, "onBind > send adInfo to adidListeners"

    const/16 v19, 0x3

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 218
    sget-object v17, Lcom/igaworks/core/AdvertisingIdClient;->adInfo:Lcom/igaworks/core/AdvertisingIdClient$AdInfo;

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;->onResult(Lcom/igaworks/core/AdvertisingIdClient$AdInfo;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2

    .line 223
    .end local v12    # "item":Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;
    .end local v14    # "tList":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;>;"
    :catch_1
    move-exception v9

    .line 224
    .restart local v9    # "e":Ljava/lang/Exception;
    :try_start_9
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 131
    .end local v6    # "adId":Ljava/lang/String;
    .end local v7    # "adInterface":Lcom/igaworks/core/AdvertisingIdClient$AdvertisingInterface;
    .end local v8    # "connection":Lcom/igaworks/core/AdvertisingIdClient$AdvertisingConnection;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v13    # "pm":Landroid/content/pm/PackageManager;
    :catch_2
    move-exception v9

    .line 132
    .restart local v9    # "e":Ljava/lang/Exception;
    if-eqz p1, :cond_8

    .line 133
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;->onResult(Lcom/igaworks/core/AdvertisingIdClient$AdInfo;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 135
    :cond_8
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 221
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v6    # "adId":Ljava/lang/String;
    .restart local v7    # "adInterface":Lcom/igaworks/core/AdvertisingIdClient$AdvertisingInterface;
    .restart local v8    # "connection":Lcom/igaworks/core/AdvertisingIdClient$AdvertisingConnection;
    .restart local v11    # "intent":Landroid/content/Intent;
    .restart local v13    # "pm":Landroid/content/pm/PackageManager;
    .restart local v14    # "tList":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;>;"
    :cond_9
    :try_start_a
    invoke-interface {v14}, Ljava/util/List;->clear()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_1

    .line 185
    .end local v6    # "adId":Ljava/lang/String;
    .end local v7    # "adInterface":Lcom/igaworks/core/AdvertisingIdClient$AdvertisingInterface;
    .end local v14    # "tList":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;>;"
    :catch_3
    move-exception v10

    .line 186
    .local v10, "exception":Ljava/lang/Exception;
    :try_start_b
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 188
    :try_start_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 189
    const/4 v15, 0x0

    sput-boolean v15, Lcom/igaworks/core/AdvertisingIdClient;->onBind:Z

    .line 194
    .end local v10    # "exception":Ljava/lang/Exception;
    :cond_a
    new-instance v15, Ljava/io/IOException;

    const-string v16, "Google Play connection failed"

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 198
    .end local v8    # "connection":Lcom/igaworks/core/AdvertisingIdClient$AdvertisingConnection;
    .end local v11    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v15

    const/16 v16, 0x0

    :try_start_d
    sput-boolean v16, Lcom/igaworks/core/AdvertisingIdClient;->onBind:Z

    .line 200
    const-string v16, "IGAW_QA"

    const-string v17, "onBind > adid request complete, send callback request to listeners."

    const/16 v18, 0x3

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    .line 205
    if-eqz p1, :cond_b

    .line 206
    :try_start_e
    sget-object v16, Lcom/igaworks/core/AdvertisingIdClient;->adInfo:Lcom/igaworks/core/AdvertisingIdClient$AdInfo;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;->onResult(Lcom/igaworks/core/AdvertisingIdClient$AdInfo;)V

    .line 209
    :cond_b
    sget-object v16, Lcom/igaworks/core/AdvertisingIdClient;->adidListeners:Ljava/util/List;

    if-eqz v16, :cond_c

    sget-object v16, Lcom/igaworks/core/AdvertisingIdClient;->adidListeners:Ljava/util/List;

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    if-lez v16, :cond_c

    .line 211
    new-instance v14, Ljava/util/ArrayList;

    sget-object v16, Lcom/igaworks/core/AdvertisingIdClient;->adidListeners:Ljava/util/List;

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 212
    .restart local v14    # "tList":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;>;"
    const-string v16, "IGAW_QA"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onBind > adidListeners size : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Lcom/igaworks/core/AdvertisingIdClient;->adidListeners:Ljava/util/List;

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x3

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 213
    sget-object v16, Lcom/igaworks/core/AdvertisingIdClient;->adidListeners:Ljava/util/List;

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V

    .line 214
    const-string v16, "IGAW_QA"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onBind > adidListeners size(after clear) : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Lcom/igaworks/core/AdvertisingIdClient;->adidListeners:Ljava/util/List;

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x3

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 215
    const-string v16, "IGAW_QA"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onBind > tList size : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x3

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 216
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;

    .line 217
    .restart local v12    # "item":Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;
    const-string v17, "IGAW_QA"

    const-string v18, "onBind > send adInfo to adidListeners"

    const/16 v19, 0x3

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 218
    sget-object v17, Lcom/igaworks/core/AdvertisingIdClient;->adInfo:Lcom/igaworks/core/AdvertisingIdClient$AdInfo;

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;->onResult(Lcom/igaworks/core/AdvertisingIdClient$AdInfo;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    goto :goto_3

    .line 223
    .end local v12    # "item":Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;
    .end local v14    # "tList":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;>;"
    :catch_4
    move-exception v9

    .line 224
    .restart local v9    # "e":Ljava/lang/Exception;
    :try_start_f
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 225
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_c
    :goto_4
    throw v15
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    .line 188
    .restart local v8    # "connection":Lcom/igaworks/core/AdvertisingIdClient$AdvertisingConnection;
    .restart local v11    # "intent":Landroid/content/Intent;
    :catchall_1
    move-exception v15

    :try_start_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 189
    const/16 v16, 0x0

    sput-boolean v16, Lcom/igaworks/core/AdvertisingIdClient;->onBind:Z

    throw v15
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 221
    .end local v8    # "connection":Lcom/igaworks/core/AdvertisingIdClient$AdvertisingConnection;
    .end local v11    # "intent":Landroid/content/Intent;
    .restart local v14    # "tList":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;>;"
    :cond_d
    :try_start_11
    invoke-interface {v14}, Ljava/util/List;->clear()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4

    goto :goto_4

    .line 230
    .end local v14    # "tList":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;>;"
    :cond_e
    :try_start_12
    const-string v15, "IGAW_QA"

    const-string v16, "onBind > com.google.android.gms"

    const/16 v17, 0x3

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-static {v0, v15, v1, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 231
    if-eqz p1, :cond_f

    .line 232
    const-string v15, "IGAW_QA"

    const-string v16, "onBind > add to adidListener."

    const/16 v17, 0x3

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-static {v0, v15, v1, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 233
    invoke-static/range {p1 .. p1}, Lcom/igaworks/core/AdvertisingIdClient;->registADIDListener(Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    .line 235
    :cond_f
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 109
    .end local v13    # "pm":Landroid/content/pm/PackageManager;
    :catch_5
    move-exception v15

    goto/16 :goto_0
.end method

.method public static registADIDListener(Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;

    .prologue
    .line 70
    sget-object v0, Lcom/igaworks/core/AdvertisingIdClient;->adidListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/igaworks/core/AdvertisingIdClient;->adidListeners:Ljava/util/List;

    .line 74
    :cond_0
    sget-object v0, Lcom/igaworks/core/AdvertisingIdClient;->adidListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    sget-object v0, Lcom/igaworks/core/AdvertisingIdClient;->adidListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_1
    return-void
.end method
