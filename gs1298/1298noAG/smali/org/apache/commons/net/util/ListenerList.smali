.class public Lorg/apache/commons/net/util/ListenerList;
.super Ljava/lang/Object;
.source "ListenerList.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/util/EventListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1ad7c1c2f00eb0f5L


# instance fields
.field private final __listeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/util/EventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/util/ListenerList;->__listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 37
    return-void
.end method


# virtual methods
.method public addListener(Ljava/util/EventListener;)V
    .locals 1
    .param p1, "listener"    # Ljava/util/EventListener;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/apache/commons/net/util/ListenerList;->__listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method public getListenerCount()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/commons/net/util/ListenerList;->__listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/EventListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/commons/net/util/ListenerList;->__listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public removeListener(Ljava/util/EventListener;)V
    .locals 1
    .param p1, "listener"    # Ljava/util/EventListener;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/commons/net/util/ListenerList;->__listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method
