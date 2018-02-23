.class public Lorg/apache/commons/net/io/CopyStreamAdapter;
.super Ljava/lang/Object;
.source "CopyStreamAdapter.java"

# interfaces
.implements Lorg/apache/commons/net/io/CopyStreamListener;


# instance fields
.field private final internalListeners:Lorg/apache/commons/net/util/ListenerList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lorg/apache/commons/net/util/ListenerList;

    invoke-direct {v0}, Lorg/apache/commons/net/util/ListenerList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/io/CopyStreamAdapter;->internalListeners:Lorg/apache/commons/net/util/ListenerList;

    .line 51
    return-void
.end method


# virtual methods
.method public addCopyStreamListener(Lorg/apache/commons/net/io/CopyStreamListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/apache/commons/net/io/CopyStreamListener;

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/commons/net/io/CopyStreamAdapter;->internalListeners:Lorg/apache/commons/net/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/util/ListenerList;->addListener(Ljava/util/EventListener;)V

    .line 107
    return-void
.end method

.method public bytesTransferred(JIJ)V
    .locals 8
    .param p1, "totalBytesTransferred"    # J
    .param p3, "bytesTransferred"    # I
    .param p4, "streamSize"    # J

    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/commons/net/io/CopyStreamAdapter;->internalListeners:Lorg/apache/commons/net/util/ListenerList;

    invoke-virtual {v0}, Lorg/apache/commons/net/util/ListenerList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/EventListener;

    .line 93
    .local v7, "listener":Ljava/util/EventListener;
    check-cast v7, Lorg/apache/commons/net/io/CopyStreamListener;

    .end local v7    # "listener":Ljava/util/EventListener;
    move-object v0, v7

    check-cast v0, Lorg/apache/commons/net/io/CopyStreamListener;

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lorg/apache/commons/net/io/CopyStreamListener;->bytesTransferred(JIJ)V

    goto :goto_0

    .line 96
    :cond_0
    return-void
.end method

.method public bytesTransferred(Lorg/apache/commons/net/io/CopyStreamEvent;)V
    .locals 3
    .param p1, "event"    # Lorg/apache/commons/net/io/CopyStreamEvent;

    .prologue
    .line 66
    iget-object v2, p0, Lorg/apache/commons/net/io/CopyStreamAdapter;->internalListeners:Lorg/apache/commons/net/util/ListenerList;

    invoke-virtual {v2}, Lorg/apache/commons/net/util/ListenerList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/EventListener;

    .line 68
    .local v1, "listener":Ljava/util/EventListener;
    check-cast v1, Lorg/apache/commons/net/io/CopyStreamListener;

    .end local v1    # "listener":Ljava/util/EventListener;
    check-cast v1, Lorg/apache/commons/net/io/CopyStreamListener;

    invoke-interface {v1, p1}, Lorg/apache/commons/net/io/CopyStreamListener;->bytesTransferred(Lorg/apache/commons/net/io/CopyStreamEvent;)V

    goto :goto_0

    .line 70
    :cond_0
    return-void
.end method

.method public removeCopyStreamListener(Lorg/apache/commons/net/io/CopyStreamListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/apache/commons/net/io/CopyStreamListener;

    .prologue
    .line 116
    iget-object v0, p0, Lorg/apache/commons/net/io/CopyStreamAdapter;->internalListeners:Lorg/apache/commons/net/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/util/ListenerList;->removeListener(Ljava/util/EventListener;)V

    .line 117
    return-void
.end method
