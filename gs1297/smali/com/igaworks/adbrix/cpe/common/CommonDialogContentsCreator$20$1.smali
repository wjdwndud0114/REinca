.class Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$20$1;
.super Ljava/lang/Object;
.source "CommonDialogContentsCreator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$20;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$20;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$20;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$20;

    .prologue
    .line 1129
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$20$1;->this$1:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$20;

    iput-object p2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$20$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1134
    :try_start_0
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$20$1;->this$1:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$20;

    iget-object v1, v1, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$20;->val$nextIv1:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$20$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1139
    :goto_0
    return-void

    .line 1135
    :catch_0
    move-exception v0

    .line 1136
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
