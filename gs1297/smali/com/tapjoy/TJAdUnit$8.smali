.class final Lcom/tapjoy/TJAdUnit$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJAdUnit;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/tapjoy/TJAdUnit;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJAdUnit;III)V
    .locals 0

    .prologue
    .line 731
    iput-object p1, p0, Lcom/tapjoy/TJAdUnit$8;->d:Lcom/tapjoy/TJAdUnit;

    iput p2, p0, Lcom/tapjoy/TJAdUnit$8;->a:I

    iput p3, p0, Lcom/tapjoy/TJAdUnit$8;->b:I

    iput p4, p0, Lcom/tapjoy/TJAdUnit$8;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 735
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$8;->d:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->j(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/TJAdUnitJSBridge;

    move-result-object v0

    iget v1, p0, Lcom/tapjoy/TJAdUnit$8;->a:I

    iget v2, p0, Lcom/tapjoy/TJAdUnit$8;->b:I

    iget v3, p0, Lcom/tapjoy/TJAdUnit$8;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/tapjoy/TJAdUnitJSBridge;->onVideoReady(III)V

    .line 736
    return-void
.end method
