.class Lcom/igaworks/util/image/FileImageCache$1;
.super Ljava/lang/Object;
.source "FileImageCache.java"

# interfaces
.implements Lcom/igaworks/util/image/ByteProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/util/image/FileImageCache;->addBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/util/image/FileImageCache;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/igaworks/util/image/FileImageCache;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/util/image/FileImageCache;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/igaworks/util/image/FileImageCache$1;->this$0:Lcom/igaworks/util/image/FileImageCache;

    iput-object p2, p0, Lcom/igaworks/util/image/FileImageCache$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/igaworks/util/image/FileImageCache$1;->val$bitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 27
    return-void
.end method
