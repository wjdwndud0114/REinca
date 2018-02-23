.class public abstract Lcom/facebook/internal/PlatformServiceClient;
.super Ljava/lang/Object;
.source "PlatformServiceClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/PlatformServiceClient$CompletedListener;
    }
.end annotation


# instance fields
.field private final applicationId:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final handler:Landroid/os/Handler;

.field private listener:Lcom/facebook/internal/PlatformServiceClient$CompletedListener;

.field private final protocolVersion:I

.field private replyMessage:I

.field private requestMessage:I

.field private running:Z

.field private sender:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIILjava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requestMessage"    # I
    .param p3, "replyMessage"    # I
    .param p4, "protocolVersion"    # I
    .param p5, "applicationId"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 53
    .local v0, "applicationContext":Landroid/content/Context;
    if-eqz v0, :cond_0

    .end local v0    # "applicationContext":Landroid/content/Context;
    :goto_0
    iput-object v0, p0, Lcom/facebook/internal/PlatformServiceClient;->context:Landroid/content/Context;

    .line 54
    iput p2, p0, Lcom/facebook/internal/PlatformServiceClient;->requestMessage:I

    .line 55
    iput p3, p0, Lcom/facebook/internal/PlatformServiceClient;->replyMessage:I

    .line 56
    iput-object p5, p0, Lcom/facebook/internal/PlatformServiceClient;->applicationId:Ljava/lang/String;

    .line 57
    iput p4, p0, Lcom/facebook/internal/PlatformServiceClient;->protocolVersion:I

    .line 59
    new-instance v1, Lcom/facebook/internal/PlatformServiceClient$1;

    invoke-direct {v1, p0}, Lcom/facebook/internal/PlatformServiceClient$1;-><init>(Lcom/facebook/internal/PlatformServiceClient;)V

    iput-object v1, p0, Lcom/facebook/internal/PlatformServiceClient;->handler:Landroid/os/Handler;

    .line 65
    return-void

    .restart local v0    # "applicationContext":Landroid/content/Context;
    :cond_0
    move-object v0, p1

    .line 53
    goto :goto_0
.end method

.method private callback(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    .line 150
    iget-boolean v1, p0, Lcom/facebook/internal/PlatformServiceClient;->running:Z

    if-nez v1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/internal/PlatformServiceClient;->running:Z

    .line 155
    iget-object v0, p0, Lcom/facebook/internal/PlatformServiceClient;->listener:Lcom/facebook/internal/PlatformServiceClient$CompletedListener;

    .line 156
    .local v0, "callback":Lcom/facebook/internal/PlatformServiceClient$CompletedListener;
    if-eqz v0, :cond_0

    .line 157
    invoke-interface {v0, p1}, Lcom/facebook/internal/PlatformServiceClient$CompletedListener;->completed(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private sendMessage()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 117
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 118
    .local v0, "data":Landroid/os/Bundle;
    const-string v3, "com.facebook.platform.extra.APPLICATION_ID"

    iget-object v4, p0, Lcom/facebook/internal/PlatformServiceClient;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0, v0}, Lcom/facebook/internal/PlatformServiceClient;->populateRequestBundle(Landroid/os/Bundle;)V

    .line 122
    iget v3, p0, Lcom/facebook/internal/PlatformServiceClient;->requestMessage:I

    invoke-static {v5, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 123
    .local v2, "request":Landroid/os/Message;
    iget v3, p0, Lcom/facebook/internal/PlatformServiceClient;->protocolVersion:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 124
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 125
    new-instance v3, Landroid/os/Messenger;

    iget-object v4, p0, Lcom/facebook/internal/PlatformServiceClient;->handler:Landroid/os/Handler;

    invoke-direct {v3, v4}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v3, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 128
    :try_start_0
    iget-object v3, p0, Lcom/facebook/internal/PlatformServiceClient;->sender:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v1

    .line 130
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v5}, Lcom/facebook/internal/PlatformServiceClient;->callback(Landroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/internal/PlatformServiceClient;->running:Z

    .line 99
    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/facebook/internal/PlatformServiceClient;->context:Landroid/content/Context;

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 137
    iget v2, p1, Landroid/os/Message;->what:I

    iget v3, p0, Lcom/facebook/internal/PlatformServiceClient;->replyMessage:I

    if-ne v2, v3, :cond_0

    .line 138
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 139
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "com.facebook.platform.status.ERROR_TYPE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "errorType":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 141
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/facebook/internal/PlatformServiceClient;->callback(Landroid/os/Bundle;)V

    .line 145
    :goto_0
    iget-object v2, p0, Lcom/facebook/internal/PlatformServiceClient;->context:Landroid/content/Context;

    invoke-virtual {v2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 147
    .end local v0    # "errorType":Ljava/lang/String;
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_0
    return-void

    .line 143
    .restart local v0    # "errorType":Ljava/lang/String;
    .restart local v1    # "extras":Landroid/os/Bundle;
    :cond_1
    invoke-direct {p0, v1}, Lcom/facebook/internal/PlatformServiceClient;->callback(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 102
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/facebook/internal/PlatformServiceClient;->sender:Landroid/os/Messenger;

    .line 103
    invoke-direct {p0}, Lcom/facebook/internal/PlatformServiceClient;->sendMessage()V

    .line 104
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v1, 0x0

    .line 107
    iput-object v1, p0, Lcom/facebook/internal/PlatformServiceClient;->sender:Landroid/os/Messenger;

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/facebook/internal/PlatformServiceClient;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    invoke-direct {p0, v1}, Lcom/facebook/internal/PlatformServiceClient;->callback(Landroid/os/Bundle;)V

    .line 114
    return-void

    .line 110
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected abstract populateRequestBundle(Landroid/os/Bundle;)V
.end method

.method public setCompletedListener(Lcom/facebook/internal/PlatformServiceClient$CompletedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/facebook/internal/PlatformServiceClient$CompletedListener;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/facebook/internal/PlatformServiceClient;->listener:Lcom/facebook/internal/PlatformServiceClient$CompletedListener;

    .line 69
    return-void
.end method

.method public start()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    iget-boolean v4, p0, Lcom/facebook/internal/PlatformServiceClient;->running:Z

    if-eqz v4, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v2

    .line 81
    :cond_1
    iget v4, p0, Lcom/facebook/internal/PlatformServiceClient;->protocolVersion:I

    invoke-static {v4}, Lcom/facebook/internal/NativeProtocol;->getLatestAvailableProtocolVersionForService(I)I

    move-result v0

    .line 83
    .local v0, "availableVersion":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 87
    iget-object v4, p0, Lcom/facebook/internal/PlatformServiceClient;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/facebook/internal/NativeProtocol;->createPlatformServiceIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 88
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 91
    iput-boolean v3, p0, Lcom/facebook/internal/PlatformServiceClient;->running:Z

    .line 92
    iget-object v2, p0, Lcom/facebook/internal/PlatformServiceClient;->context:Landroid/content/Context;

    invoke-virtual {v2, v1, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move v2, v3

    .line 93
    goto :goto_0
.end method
