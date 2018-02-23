.class Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$1;
.super Ljava/lang/Object;
.source "CommonDialogContentsCreator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$1;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 163
    :try_start_0
    iget-object v10, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$1;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v11, v10, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    iget-object v10, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$1;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v10, v10, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->promotions:Landroid/util/SparseArray;

    iget-object v12, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$1;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget v12, v12, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->currentCampaignKey:I

    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/igaworks/adbrix/model/Promotion;

    invoke-virtual {v10}, Lcom/igaworks/adbrix/model/Promotion;->getTargetAppScheme()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Lcom/igaworks/cpe/ConditionChecker;->checkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 165
    iget-object v10, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$1;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v11, v10, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    iget-object v10, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$1;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v10, v10, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    iget-object v10, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$1;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v10, v10, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->promotions:Landroid/util/SparseArray;

    iget-object v13, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$1;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget v13, v13, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->currentCampaignKey:I

    invoke-virtual {v10, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/igaworks/adbrix/model/Promotion;

    invoke-virtual {v10}, Lcom/igaworks/adbrix/model/Promotion;->getTargetAppScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 241
    :goto_0
    iget-object v10, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$1;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v11, v10, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const-string v12, "IGAW_QA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Adbrix > actionListener is null : "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v10, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$1;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v10, v10, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->actionListener:Lcom/igaworks/adbrix/cpe/common/DialogActionListener;

    if-nez v10, :cond_9

    const/4 v10, 0x1

    :goto_1
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x3

    invoke-static {v11, v12, v10, v13}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 243
    iget-object v10, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$1;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v10, v10, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->actionListener:Lcom/igaworks/adbrix/cpe/common/DialogActionListener;

    if-eqz v10, :cond_0

    .line 244
    iget-object v10, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$1;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v10, v10, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->actionListener:Lcom/igaworks/adbrix/cpe/common/DialogActionListener;

    invoke-interface {v10}, Lcom/igaworks/adbrix/cpe/common/DialogActionListener;->onPlayBtnClick()V

    .line 250
    :cond_0
    :goto_2
    return-void

    .line 169
    :cond_1
    iget-object v10, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$1;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v10, v10, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-static {v10}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v7

    .line 171
    .local v7, "parameter":Lcom/igaworks/core/RequestParameter;
    invoke-static {}, Lcom/igaworks/dao/CoreIDDAO;->getInstance()Lcom/igaworks/dao/CoreIDDAO;

    move-result-object v10

    iget-object v11, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$1;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v11, v11, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-virtual {v10, v11}, Lcom/igaworks/dao/CoreIDDAO;->getGoogleAdId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "google_ad_id":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/igaworks/core/RequestParameter;->getPersistantDemoInfo_v2()Ljava/util/List;

    move-result-object v0

    .line 175
    .local v0, "demoList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v10, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$1;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v10, v10, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->promotions:Landroid/util/SparseArray;

    iget-object v11, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$1;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget v11, v11, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->currentCampaignKey:I

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/igaworks/adbrix/model/Promotion;

    invoke-virtual {v10}, Lcom/igaworks/adbrix/model/Promotion;->getDisplay()Lcom/igaworks/adbrix/model/PromotionDisplay;

    move-result-object v10

    invoke-virtual {v10}, Lcom/igaworks/adbrix/model/PromotionDisplay;->getClickUrl()Ljava/lang/String;

    move-result-object v5

    .line 176
    .local v5, "landingUrlStr":Ljava/lang/String;
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 177
    .local v6, "landingUrlUri":Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v8

    .line 179
    .local v8, "queryStr":Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 181
    const/4 v9, 0x0

    .line 183
    .local v9, "usn":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 185
    .local v4, "item":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v10, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    const-string v12, "userId"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 186
    iget-object v9, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .end local v9    # "usn":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 192
    .end local v4    # "item":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9    # "usn":Ljava/lang/String;
    :cond_3
    if-nez v9, :cond_4

    .line 194
    const-string v9, ""

    .line 198
    :cond_4
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_5

    .line 200
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&usn="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v9}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 218
    .end local v9    # "usn":Ljava/lang/String;
    :goto_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&agreement_key="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&src_appkey="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Lcom/igaworks/core/RequestParameter;->getAppkey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&r_key="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v10, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$1;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v10, v10, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->promotions:Landroid/util/SparseArray;

    iget-object v12, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$1;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget v12, v12, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->currentCampaignKey:I

    .line 219
    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/igaworks/adbrix/model/Promotion;

    invoke-virtual {v10}, Lcom/igaworks/adbrix/model/Promotion;->getDisplay()Lcom/igaworks/adbrix/model/PromotionDisplay;

    move-result-object v10

    invoke-virtual {v10}, Lcom/igaworks/adbrix/model/PromotionDisplay;->getSlide()Lcom/igaworks/adbrix/model/SlideModel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/igaworks/adbrix/model/SlideModel;->getResourceKey()I

    move-result v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 221
    iget-object v10, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$1;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v10, v10, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const-string v11, "IGAW_QA"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Adbrix > promotion landing url : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x3

    invoke-static {v10, v11, v12, v13}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 223
    iget-object v10, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$1;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v10, v10, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->promotions:Landroid/util/SparseArray;

    iget-object v11, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$1;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget v11, v11, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->currentCampaignKey:I

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/igaworks/adbrix/model/Promotion;

    invoke-virtual {v10}, Lcom/igaworks/adbrix/model/Promotion;->getDisplay()Lcom/igaworks/adbrix/model/PromotionDisplay;

    move-result-object v10

    invoke-virtual {v10}, Lcom/igaworks/adbrix/model/PromotionDisplay;->isIsMarketUrl()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 224
    iget-object v10, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$1;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    new-instance v11, Landroid/webkit/WebView;

    iget-object v12, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$1;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v12, v12, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v11, v10, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->webview:Landroid/webkit/WebView;

    .line 225
    iget-object v10, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$1;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x2

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v11, v10, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->webviewParam:Landroid/widget/LinearLayout$LayoutParams;

    .line 227
    iget-object v10, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$1;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v10, v10, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->webview:Landroid/webkit/WebView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 228
    iget-object v10, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$1;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v10, v10, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->webview:Landroid/webkit/WebView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 230
    iget-object v10, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$1;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v10, v10, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->webview:Landroid/webkit/WebView;

    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 231
    iget-object v10, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$1;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v10, v10, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->webview:Landroid/webkit/WebView;

    new-instance v11, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$IgawPromotionWebViewClient;

    iget-object v12, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$1;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$IgawPromotionWebViewClient;-><init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$1;)V

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 233
    iget-object v10, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$1;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v10, v10, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->webview:Landroid/webkit/WebView;

    invoke-virtual {v10, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 247
    .end local v0    # "demoList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2    # "google_ad_id":Ljava/lang/String;
    .end local v5    # "landingUrlStr":Ljava/lang/String;
    .end local v6    # "landingUrlUri":Landroid/net/Uri;
    .end local v7    # "parameter":Lcom/igaworks/core/RequestParameter;
    .end local v8    # "queryStr":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 248
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 204
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "demoList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v2    # "google_ad_id":Ljava/lang/String;
    .restart local v5    # "landingUrlStr":Ljava/lang/String;
    .restart local v6    # "landingUrlUri":Landroid/net/Uri;
    .restart local v7    # "parameter":Lcom/igaworks/core/RequestParameter;
    .restart local v8    # "queryStr":Ljava/lang/String;
    .restart local v9    # "usn":Ljava/lang/String;
    :cond_5
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "?usn="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v9}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 209
    .end local v9    # "usn":Ljava/lang/String;
    :cond_6
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_7

    .line 210
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&usn="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 212
    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "?usn="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 235
    :cond_8
    new-instance v3, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v3, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 236
    .local v3, "i":Landroid/content/Intent;
    iget-object v10, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$1;->this$0:Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;

    iget-object v10, v10, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-virtual {v10, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 241
    .end local v0    # "demoList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2    # "google_ad_id":Ljava/lang/String;
    .end local v3    # "i":Landroid/content/Intent;
    .end local v5    # "landingUrlStr":Ljava/lang/String;
    .end local v6    # "landingUrlUri":Landroid/net/Uri;
    .end local v7    # "parameter":Lcom/igaworks/core/RequestParameter;
    .end local v8    # "queryStr":Ljava/lang/String;
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_1
.end method
