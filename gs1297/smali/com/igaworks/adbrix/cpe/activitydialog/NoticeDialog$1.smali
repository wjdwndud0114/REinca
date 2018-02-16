.class Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$1;
.super Ljava/lang/Object;
.source "NoticeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;
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
    .line 128
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$1;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$1;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    invoke-virtual {v0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->finish()V

    .line 133
    return-void
.end method
