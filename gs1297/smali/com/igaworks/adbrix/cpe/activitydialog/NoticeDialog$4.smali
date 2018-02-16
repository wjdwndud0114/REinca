.class Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;
.super Ljava/lang/Object;
.source "NoticeDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->setLayoutImageView(Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 297
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->url:Ljava/lang/String;
    invoke-static {v2}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$900(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/igaworks/util/CommonHelper;->getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 298
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    invoke-virtual {v2}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 299
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;

    invoke-direct {v2, p0, v0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;-><init>(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 398
    return-void
.end method
