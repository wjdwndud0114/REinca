.class Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2$1;
.super Ljava/lang/Object;
.source "NoticeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;)V
    .locals 0
    .param p1, "this$2"    # Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2$1;->this$2:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2$1;->this$2:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;

    iget-object v0, v0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;

    iget-object v0, v0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    invoke-virtual {v0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->finish()V

    .line 269
    return-void
.end method
