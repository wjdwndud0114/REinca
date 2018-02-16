.class public Lcom/igaworks/adbrix/cpe/CPECompletionHandler;
.super Ljava/lang/Object;
.source "CPECompletionHandler.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CPECompletionHandler"

.field private static imageDownloader:Lcom/igaworks/util/image/ImageDownloader;

.field private static onRestore:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/igaworks/adbrix/cpe/CPECompletionHandler;->onRestore:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 24
    sput-boolean p0, Lcom/igaworks/adbrix/cpe/CPECompletionHandler;->onRestore:Z

    return p0
.end method

.method public static checkAndComplete(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/igaworks/core/RequestParameter;Lcom/igaworks/adbrix/core/ADBrixHttpManager;Ljava/util/Calendar;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "parameter"    # Lcom/igaworks/core/RequestParameter;
    .param p4, "httpManager"    # Lcom/igaworks/adbrix/core/ADBrixHttpManager;
    .param p5, "restoreTime"    # Ljava/util/Calendar;

    .prologue
    .line 43
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {v0}, Lcom/igaworks/util/bolts_task/Task;->forResult(Ljava/lang/Object;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v7

    new-instance v0, Lcom/igaworks/adbrix/cpe/CPECompletionHandler$1;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/igaworks/adbrix/cpe/CPECompletionHandler$1;-><init>(Landroid/content/Context;Lcom/igaworks/core/RequestParameter;Ljava/lang/String;Ljava/lang/String;Lcom/igaworks/adbrix/core/ADBrixHttpManager;Ljava/util/Calendar;)V

    sget-object v1, Lcom/igaworks/impl/InternalAction;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v7, v0, v1}, Lcom/igaworks/util/bolts_task/Task;->continueWith(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    .line 78
    return-void
.end method

.method public static computeHashedName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 279
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 280
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 282
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 283
    .local v2, "result":[B
    const-string v3, "%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X"

    const/16 v4, 0x10

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget-byte v6, v2, v6

    .line 284
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    aget-byte v6, v2, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x2

    aget-byte v6, v2, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x3

    aget-byte v6, v2, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const/4 v6, 0x4

    aget-byte v6, v2, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const/4 v6, 0x5

    aget-byte v6, v2, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const/4 v6, 0x6

    aget-byte v6, v2, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const/4 v6, 0x7

    aget-byte v6, v2, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const/16 v6, 0x8

    aget-byte v6, v2, v6

    .line 285
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const/16 v6, 0x9

    aget-byte v6, v2, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const/16 v6, 0xa

    aget-byte v6, v2, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const/16 v6, 0xb

    aget-byte v6, v2, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const/16 v6, 0xc

    aget-byte v6, v2, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xd

    const/16 v6, 0xd

    aget-byte v6, v2, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xe

    const/16 v6, 0xe

    aget-byte v6, v2, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xf

    const/16 v6, 0xf

    aget-byte v6, v2, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    .line 283
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 287
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "result":[B
    :catch_0
    move-exception v1

    .line 288
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static getImageDownloader(Landroid/content/Context;)Lcom/igaworks/util/image/ImageDownloader;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    sget-object v0, Lcom/igaworks/adbrix/cpe/CPECompletionHandler;->imageDownloader:Lcom/igaworks/util/image/ImageDownloader;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/igaworks/util/image/ImageDownloader;

    const-string v1, "imagecache"

    invoke-direct {v0, p0, v1}, Lcom/igaworks/util/image/ImageDownloader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/igaworks/adbrix/cpe/CPECompletionHandler;->imageDownloader:Lcom/igaworks/util/image/ImageDownloader;

    .line 36
    :cond_0
    sget-object v0, Lcom/igaworks/adbrix/cpe/CPECompletionHandler;->imageDownloader:Lcom/igaworks/util/image/ImageDownloader;

    return-object v0
.end method

.method public static restoreCPEAction(Landroid/content/Context;Lcom/igaworks/core/RequestParameter;Lcom/igaworks/adbrix/core/ADBrixHttpManager;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parameter"    # Lcom/igaworks/core/RequestParameter;
    .param p2, "tracer"    # Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    .prologue
    .line 83
    sget-boolean v0, Lcom/igaworks/adbrix/cpe/CPECompletionHandler;->onRestore:Z

    if-eqz v0, :cond_0

    .line 145
    :goto_0
    return-void

    .line 87
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/igaworks/adbrix/cpe/CPECompletionHandler;->onRestore:Z

    .line 89
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {v0}, Lcom/igaworks/util/bolts_task/Task;->forResult(Ljava/lang/Object;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    new-instance v1, Lcom/igaworks/adbrix/cpe/CPECompletionHandler$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/igaworks/adbrix/cpe/CPECompletionHandler$2;-><init>(Landroid/content/Context;Lcom/igaworks/core/RequestParameter;Lcom/igaworks/adbrix/core/ADBrixHttpManager;)V

    sget-object v2, Lcom/igaworks/util/bolts_task/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/util/bolts_task/Task;->continueWith(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    goto :goto_0
.end method
