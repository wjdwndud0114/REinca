.class Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$21;
.super Lcom/igaworks/util/image/ImageDownloadAsyncCallback;
.source "CommonDialogContentsCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->setOneStepView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

.field final synthetic val$nextIv2:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;Ljava/lang/String;Landroid/widget/ImageView;Lcom/igaworks/util/image/ImageCache;Landroid/widget/FrameLayout;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Landroid/widget/ImageView;
    .param p4, "x2"    # Lcom/igaworks/util/image/ImageCache;
    .param p5, "x3"    # Landroid/widget/FrameLayout;

    .prologue
    .line 1164
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$21;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iput-object p6, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$21;->val$nextIv2:Landroid/widget/ImageView;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/igaworks/util/image/ImageDownloadAsyncCallback;-><init>(Ljava/lang/String;Landroid/widget/ImageView;Lcom/igaworks/util/image/ImageCache;Landroid/widget/FrameLayout;)V

    return-void
.end method


# virtual methods
.method public onResultCustom(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$21;->val$nextIv2:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1169
    return-void
.end method
