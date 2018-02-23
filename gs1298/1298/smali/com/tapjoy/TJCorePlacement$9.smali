.class final Lcom/tapjoy/TJCorePlacement$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/TJCacheListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJCorePlacement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/TJCacheListener;

.field final synthetic b:Lcom/tapjoy/TJCorePlacement;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJCorePlacement;Lcom/tapjoy/TJCacheListener;)V
    .locals 0

    .prologue
    .line 592
    iput-object p1, p0, Lcom/tapjoy/TJCorePlacement$9;->b:Lcom/tapjoy/TJCorePlacement;

    iput-object p2, p0, Lcom/tapjoy/TJCorePlacement$9;->a:Lcom/tapjoy/TJCacheListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCachingComplete(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 596
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$9;->a:Lcom/tapjoy/TJCacheListener;

    invoke-interface {v0, p1}, Lcom/tapjoy/TJCacheListener;->onCachingComplete(I)V

    .line 597
    return-void
.end method
