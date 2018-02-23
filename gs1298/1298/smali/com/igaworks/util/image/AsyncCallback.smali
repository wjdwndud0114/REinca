.class public interface abstract Lcom/igaworks/util/image/AsyncCallback;
.super Ljava/lang/Object;
.source "AsyncCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract cancelled()V
.end method

.method public abstract exceptionOccured(Ljava/lang/Exception;)V
.end method

.method public abstract onResult(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
