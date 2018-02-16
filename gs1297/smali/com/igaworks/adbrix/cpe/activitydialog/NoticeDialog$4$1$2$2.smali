.class Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2$2;
.super Ljava/lang/Object;
.source "NoticeDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2;)V
    .locals 0
    .param p1, "this$3"    # Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2$2;->this$3:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 370
    sget-object v2, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/ScheduleContainer;->getSchedule()Lcom/igaworks/adbrix/model/Schedule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/Schedule;->getMedia()Lcom/igaworks/adbrix/model/Media;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/Media;->getTheme()Lcom/igaworks/adbrix/model/Theme;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/Theme;->getCloseBtn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/igaworks/util/CommonHelper;->getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 371
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2$2;->this$3:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2;

    iget-object v2, v2, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2;->this$2:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;

    iget-object v2, v2, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;

    iget-object v2, v2, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    invoke-virtual {v2}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 372
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2$2$1;

    invoke-direct {v2, p0, v0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2$2$1;-><init>(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2$2;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 389
    return-void
.end method
