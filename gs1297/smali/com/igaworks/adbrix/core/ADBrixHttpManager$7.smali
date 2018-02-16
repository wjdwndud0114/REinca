.class Lcom/igaworks/adbrix/core/ADBrixHttpManager$7;
.super Lcom/igaworks/util/image/ImageDownloadAsyncCallback;
.source "ADBrixHttpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/core/ADBrixHttpManager;->preDownloadImage(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/adbrix/core/ADBrixHttpManager;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/core/ADBrixHttpManager;Ljava/lang/String;Landroid/widget/ImageView;Lcom/igaworks/util/image/ImageCache;Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/adbrix/core/ADBrixHttpManager;
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Landroid/widget/ImageView;
    .param p4, "x2"    # Lcom/igaworks/util/image/ImageCache;
    .param p5, "x3"    # Landroid/widget/FrameLayout;

    .prologue
    .line 697
    iput-object p1, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$7;->this$0:Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/igaworks/util/image/ImageDownloadAsyncCallback;-><init>(Ljava/lang/String;Landroid/widget/ImageView;Lcom/igaworks/util/image/ImageCache;Landroid/widget/FrameLayout;)V

    return-void
.end method


# virtual methods
.method public onResultCustom(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 701
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 704
    return-void
.end method
