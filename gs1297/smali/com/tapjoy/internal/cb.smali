.class public final Lcom/tapjoy/internal/cb;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 11
    iput-object p1, p0, Lcom/tapjoy/internal/cb;->a:Ljava/lang/Object;

    .line 12
    return-void
.end method
