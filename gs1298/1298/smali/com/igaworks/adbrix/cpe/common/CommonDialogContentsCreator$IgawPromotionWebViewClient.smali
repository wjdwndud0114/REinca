.class Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$IgawPromotionWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "CommonDialogContentsCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IgawPromotionWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;


# direct methods
.method private constructor <init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$IgawPromotionWebViewClient;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;
    .param p2, "x1"    # Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$1;

    .prologue
    .line 253
    invoke-direct {p0, p1}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$IgawPromotionWebViewClient;-><init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;)V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 258
    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$IgawPromotionWebViewClient;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v3, v3, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const-string v4, "IGAW_QA"

    const-string v5, "IgawPromotionWebViewClient >> shouldOverrideUrlLoading : %s"

    new-array v6, v2, [Ljava/lang/Object;

    aput-object p2, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v3, v4, v5, v6, v1}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 259
    const-string v3, "http"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 260
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 261
    .local v0, "i":Landroid/content/Intent;
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$IgawPromotionWebViewClient;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v2, v2, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 265
    .end local v0    # "i":Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method
