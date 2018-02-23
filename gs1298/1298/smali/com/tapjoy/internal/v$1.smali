.class final Lcom/tapjoy/internal/v$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/bg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/v;->a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/InputStream;

.field final synthetic b:Lcom/tapjoy/internal/v;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/v;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/tapjoy/internal/v$1;->b:Lcom/tapjoy/internal/v;

    iput-object p2, p0, Lcom/tapjoy/internal/v$1;->a:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 29
    .line 1032
    iget-object v0, p0, Lcom/tapjoy/internal/v$1;->a:Ljava/io/InputStream;

    instance-of v0, v0, Lcom/tapjoy/internal/bh;

    if-eqz v0, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/tapjoy/internal/v$1;->a:Ljava/io/InputStream;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1035
    :cond_0
    new-instance v0, Lcom/tapjoy/internal/bh;

    iget-object v1, p0, Lcom/tapjoy/internal/v$1;->a:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Lcom/tapjoy/internal/bh;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method
