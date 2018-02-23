.class public interface abstract Lcom/google/android/gms/nearby/connection/Connections$MessageListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/nearby/connection/Connections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MessageListener"
.end annotation


# virtual methods
.method public abstract onDisconnected(Ljava/lang/String;)V
.end method

.method public abstract onMessageReceived(Ljava/lang/String;[BZ)V
.end method
