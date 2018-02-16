.class Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$2;
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
    .line 136
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$2;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 140
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$2;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    new-instance v1, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$2;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->webview:Landroid/webkit/WebView;
    invoke-static {v0, v1}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$002(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 141
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$2;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    # setter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->webviewParam:Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v0, v1}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$102(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    .line 143
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$2;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->webview:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$000(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 144
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$2;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->webview:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$000(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 146
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$2;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->webview:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$000(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 148
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$2;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->webview:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$000(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$2;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->landing_url:Ljava/lang/String;
    invoke-static {v1}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$200(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 149
    return-void
.end method
