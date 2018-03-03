.class final Lcom/tapjoy/internal/hg$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/hg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/hg;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/hg;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/tapjoy/internal/hg$2;->a:Lcom/tapjoy/internal/hg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tapjoy/internal/hg$2;->a:Lcom/tapjoy/internal/hg;

    invoke-static {v0}, Lcom/tapjoy/internal/hg;->b(Lcom/tapjoy/internal/hg;)Landroid/graphics/Bitmap;

    .line 41
    iget-object v0, p0, Lcom/tapjoy/internal/hg$2;->a:Lcom/tapjoy/internal/hg;

    invoke-static {v0}, Lcom/tapjoy/internal/hg;->c(Lcom/tapjoy/internal/hg;)Lcom/tapjoy/internal/hc;

    .line 42
    iget-object v0, p0, Lcom/tapjoy/internal/hg$2;->a:Lcom/tapjoy/internal/hg;

    invoke-static {v0}, Lcom/tapjoy/internal/hg;->d(Lcom/tapjoy/internal/hg;)Ljava/lang/Thread;

    .line 43
    iget-object v0, p0, Lcom/tapjoy/internal/hg$2;->a:Lcom/tapjoy/internal/hg;

    invoke-static {v0}, Lcom/tapjoy/internal/hg;->e(Lcom/tapjoy/internal/hg;)Z

    .line 44
    return-void
.end method
