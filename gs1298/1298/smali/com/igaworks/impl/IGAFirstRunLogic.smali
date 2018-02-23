.class Lcom/igaworks/impl/IGAFirstRunLogic;
.super Ljava/lang/Object;
.source "IGAFirstRunLogic.java"


# static fields
.field private static final InstallReferrerClientConnectionTimout:I = 0x1388

.field private static final InstallReferrerResponse_GeneralException:I = -0x64

.field private static final InstallReferrerResponse_RemoteException:I = -0x65


# instance fields
.field private gotBroadcastReferrer:Z

.field private gotGoogleReferrer:Z

.field private final mBroadcastWaitObject:Ljava/lang/Object;

.field private mInstallReferrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

.field private mReferrerStateListener:Lcom/android/installreferrer/api/InstallReferrerStateListener;

.field private notifiedWaitObject:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Lcom/igaworks/impl/IGAFirstRunLogic$2;

    invoke-direct {v0, p0}, Lcom/igaworks/impl/IGAFirstRunLogic$2;-><init>(Lcom/igaworks/impl/IGAFirstRunLogic;)V

    iput-object v0, p0, Lcom/igaworks/impl/IGAFirstRunLogic;->mReferrerStateListener:Lcom/android/installreferrer/api/InstallReferrerStateListener;

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/igaworks/impl/IGAFirstRunLogic;->mBroadcastWaitObject:Ljava/lang/Object;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/igaworks/impl/IGAFirstRunLogic;)Z
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/impl/IGAFirstRunLogic;

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/igaworks/impl/IGAFirstRunLogic;->gotGoogleReferrer:Z

    return v0
.end method

.method static synthetic access$100(Lcom/igaworks/impl/IGAFirstRunLogic;)Lcom/android/installreferrer/api/InstallReferrerClient;
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/impl/IGAFirstRunLogic;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/igaworks/impl/IGAFirstRunLogic;->mInstallReferrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    return-object v0
.end method

.method static synthetic access$200(Lcom/igaworks/impl/IGAFirstRunLogic;Lcom/android/installreferrer/api/InstallReferrerClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/igaworks/impl/IGAFirstRunLogic;
    .param p1, "x1"    # Lcom/android/installreferrer/api/InstallReferrerClient;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/igaworks/impl/IGAFirstRunLogic;->onInstallReferrerResponseOK(Lcom/android/installreferrer/api/InstallReferrerClient;)V

    return-void
.end method

.method static synthetic access$300(Lcom/igaworks/impl/IGAFirstRunLogic;I)V
    .locals 0
    .param p0, "x0"    # Lcom/igaworks/impl/IGAFirstRunLogic;
    .param p1, "x1"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/igaworks/impl/IGAFirstRunLogic;->onInstallReferrerResponseError(I)V

    return-void
.end method

.method private onInstallReferrerResponseError(I)V
    .locals 3
    .param p1, "responseCode"    # I

    .prologue
    .line 223
    const-string v0, "IGAW_QA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FirstRun::onInstallReferrerResponseError("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/igaworks/impl/IGAFirstRunLogic;->googleInstallReferrerSequenceComplete(Z)V

    .line 225
    return-void
.end method

.method private onInstallReferrerResponseOK(Lcom/android/installreferrer/api/InstallReferrerClient;)V
    .locals 12
    .param p1, "client"    # Lcom/android/installreferrer/api/InstallReferrerClient;

    .prologue
    const-wide/16 v10, 0x0

    .line 179
    const-string v6, "IGAW_QA"

    const-string v7, "FirstRun::onInstallReferrerResponseOK()"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :try_start_0
    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->getInstallReferrer()Lcom/android/installreferrer/api/ReferrerDetails;

    move-result-object v0

    .line 182
    .local v0, "details":Lcom/android/installreferrer/api/ReferrerDetails;
    if-eqz v0, :cond_2

    .line 183
    const-string v6, "IGAW_QA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FirstRun::Install Referrer: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallReferrer()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {v0}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallReferrer()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/igaworks/impl/IGAFirstRunLogic;->setInstallReferrer(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallBeginTimestampSeconds()J

    move-result-wide v2

    .line 188
    .local v2, "installBeginTimestamp":J
    cmp-long v6, v2, v10

    if-eqz v6, :cond_0

    .line 190
    invoke-direct {p0, v2, v3}, Lcom/igaworks/impl/IGAFirstRunLogic;->setInstallBeginTimestamp(J)V

    .line 193
    :cond_0
    invoke-virtual {v0}, Lcom/android/installreferrer/api/ReferrerDetails;->getReferrerClickTimestampSeconds()J

    move-result-wide v4

    .line 194
    .local v4, "referrerClickTimestamp":J
    cmp-long v6, v4, v10

    if-eqz v6, :cond_1

    .line 195
    invoke-direct {p0, v4, v5}, Lcom/igaworks/impl/IGAFirstRunLogic;->setGetReferrerClickTimestampSeconds(J)V

    .line 197
    :cond_1
    const-string v6, "IGAW_QA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FirstRun::Install Referrer Timestamps: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .end local v2    # "installBeginTimestamp":J
    .end local v4    # "referrerClickTimestamp":J
    :cond_2
    if-eqz v0, :cond_3

    const/4 v6, 0x1

    :goto_0
    invoke-virtual {p0, v6}, Lcom/igaworks/impl/IGAFirstRunLogic;->googleInstallReferrerSequenceComplete(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v0    # "details":Lcom/android/installreferrer/api/ReferrerDetails;
    :goto_1
    return-void

    .line 200
    .restart local v0    # "details":Lcom/android/installreferrer/api/ReferrerDetails;
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 202
    .end local v0    # "details":Lcom/android/installreferrer/api/ReferrerDetails;
    :catch_0
    move-exception v1

    .line 203
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "IGAW_QA"

    const-string v7, "FirstRun::ReferrerDetails exception"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    const/16 v6, -0x65

    invoke-direct {p0, v6}, Lcom/igaworks/impl/IGAFirstRunLogic;->onInstallReferrerResponseError(I)V

    goto :goto_1
.end method

.method private setGetReferrerClickTimestampSeconds(J)V
    .locals 5
    .param p1, "referrerClickTimestampSeconds"    # J

    .prologue
    .line 237
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "igaworks_InstallReferrerClient"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 238
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 239
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "referrer_click_timestamp"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 240
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 241
    return-void
.end method

.method private setInstallBeginTimestamp(J)V
    .locals 5
    .param p1, "installBeginTimestampSeconds"    # J

    .prologue
    .line 228
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "igaworks_InstallReferrerClient"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 229
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 231
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "install_begin_timestamp"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 232
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 234
    return-void
.end method

.method private setInstallReferrer(Ljava/lang/String;)V
    .locals 5
    .param p1, "installReferrer"    # Ljava/lang/String;

    .prologue
    .line 245
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "igaworks_InstallReferrerClient"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 246
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 247
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "install_referrer"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 248
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 249
    return-void
.end method

.method private startInstallReferrerClientConnection(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    :try_start_0
    invoke-static {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->newBuilder(Landroid/content/Context;)Lcom/android/installreferrer/api/InstallReferrerClient$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/installreferrer/api/InstallReferrerClient$Builder;->build()Lcom/android/installreferrer/api/InstallReferrerClient;

    move-result-object v2

    iput-object v2, p0, Lcom/igaworks/impl/IGAFirstRunLogic;->mInstallReferrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    invoke-static {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->newBuilder(Landroid/content/Context;)Lcom/android/installreferrer/api/InstallReferrerClient$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/installreferrer/api/InstallReferrerClient$Builder;->build()Lcom/android/installreferrer/api/InstallReferrerClient;

    move-result-object v2

    iput-object v2, p0, Lcom/igaworks/impl/IGAFirstRunLogic;->mInstallReferrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 133
    :try_start_1
    iget-object v2, p0, Lcom/igaworks/impl/IGAFirstRunLogic;->mInstallReferrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    iget-object v3, p0, Lcom/igaworks/impl/IGAFirstRunLogic;->mReferrerStateListener:Lcom/android/installreferrer/api/InstallReferrerStateListener;

    invoke-virtual {v2, v3}, Lcom/android/installreferrer/api/InstallReferrerClient;->startConnection(Lcom/android/installreferrer/api/InstallReferrerStateListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 141
    :goto_1
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 142
    .local v1, "timeoutHandler":Landroid/os/Handler;
    new-instance v2, Lcom/igaworks/impl/IGAFirstRunLogic$1;

    invoke-direct {v2, p0}, Lcom/igaworks/impl/IGAFirstRunLogic$1;-><init>(Lcom/igaworks/impl/IGAFirstRunLogic;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 151
    return-void

    .line 125
    .end local v1    # "timeoutHandler":Landroid/os/Handler;
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "IGAW_QA"

    const-string v3, "FirstRun::Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 134
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 136
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "IGAW_QA"

    const-string v3, "FirstRun::Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    const/16 v2, -0x64

    invoke-direct {p0, v2}, Lcom/igaworks/impl/IGAFirstRunLogic;->onInstallReferrerResponseError(I)V

    goto :goto_1
.end method

.method private tryNotifyWaitObject()V
    .locals 3

    .prologue
    .line 56
    iget-object v1, p0, Lcom/igaworks/impl/IGAFirstRunLogic;->mBroadcastWaitObject:Ljava/lang/Object;

    monitor-enter v1

    .line 57
    :try_start_0
    iget-boolean v0, p0, Lcom/igaworks/impl/IGAFirstRunLogic;->notifiedWaitObject:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/igaworks/impl/IGAFirstRunLogic;->gotGoogleReferrer:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/igaworks/impl/IGAFirstRunLogic;->gotBroadcastReferrer:Z

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/igaworks/impl/IGAFirstRunLogic;->mBroadcastWaitObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igaworks/impl/IGAFirstRunLogic;->notifiedWaitObject:Z

    .line 60
    const-string v0, "IGAW_QA"

    const-string v2, "FirstRun::(COMPLETE)"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    monitor-exit v1

    .line 64
    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method cancel()V
    .locals 2

    .prologue
    .line 100
    iget-object v1, p0, Lcom/igaworks/impl/IGAFirstRunLogic;->mBroadcastWaitObject:Ljava/lang/Object;

    monitor-enter v1

    .line 101
    :try_start_0
    iget-boolean v0, p0, Lcom/igaworks/impl/IGAFirstRunLogic;->notifiedWaitObject:Z

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/igaworks/impl/IGAFirstRunLogic;->mBroadcastWaitObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igaworks/impl/IGAFirstRunLogic;->notifiedWaitObject:Z

    .line 105
    :cond_0
    monitor-exit v1

    .line 106
    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method googleInstallReferrerSequenceComplete(Z)V
    .locals 1
    .param p1, "success"    # Z

    .prologue
    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/igaworks/impl/IGAFirstRunLogic;->gotGoogleReferrer:Z

    .line 48
    if-eqz p1, :cond_0

    .line 50
    iput-boolean v0, p0, Lcom/igaworks/impl/IGAFirstRunLogic;->gotBroadcastReferrer:Z

    .line 52
    :cond_0
    invoke-direct {p0}, Lcom/igaworks/impl/IGAFirstRunLogic;->tryNotifyWaitObject()V

    .line 53
    return-void
.end method

.method isWaiting()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/igaworks/impl/IGAFirstRunLogic;->notifiedWaitObject:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method receivedInstallReferrer()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igaworks/impl/IGAFirstRunLogic;->gotBroadcastReferrer:Z

    .line 43
    invoke-direct {p0}, Lcom/igaworks/impl/IGAFirstRunLogic;->tryNotifyWaitObject()V

    .line 44
    return-void
.end method

.method waitForFirstRunData(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "timeToWait"    # I

    .prologue
    .line 76
    const-string v0, "IGAW_QA"

    const-string v1, "FirstRun::(START)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-direct {p0, p1}, Lcom/igaworks/impl/IGAFirstRunLogic;->startInstallReferrerClientConnection(Landroid/content/Context;)V

    .line 80
    iget-object v1, p0, Lcom/igaworks/impl/IGAFirstRunLogic;->mBroadcastWaitObject:Ljava/lang/Object;

    monitor-enter v1

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/igaworks/impl/IGAFirstRunLogic;->mBroadcastWaitObject:Ljava/lang/Object;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 89
    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 83
    :catch_0
    move-exception v0

    goto :goto_0
.end method
