.class final Lcom/tapjoy/internal/hg$1;
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
    .line 28
    iput-object p1, p0, Lcom/tapjoy/internal/hg$1;->a:Lcom/tapjoy/internal/hg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tapjoy/internal/hg$1;->a:Lcom/tapjoy/internal/hg;

    invoke-static {v0}, Lcom/tapjoy/internal/hg;->a(Lcom/tapjoy/internal/hg;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/hg$1;->a:Lcom/tapjoy/internal/hg;

    invoke-static {v0}, Lcom/tapjoy/internal/hg;->a(Lcom/tapjoy/internal/hg;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/tapjoy/internal/hg$1;->a:Lcom/tapjoy/internal/hg;

    iget-object v1, p0, Lcom/tapjoy/internal/hg$1;->a:Lcom/tapjoy/internal/hg;

    invoke-static {v1}, Lcom/tapjoy/internal/hg;->a(Lcom/tapjoy/internal/hg;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/hg;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 34
    :cond_0
    return-void
.end method
