.class final Lcom/igaworks/adbrix/cpe/PromotionHandler$5;
.super Ljava/lang/Object;
.source "PromotionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/cpe/PromotionHandler;->showPromotion(Landroid/content/Context;Lcom/igaworks/adbrix/model/Space;Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$primaryCampaignKey:I

.field final synthetic val$space:Lcom/igaworks/adbrix/model/Space;

.field final synthetic val$visibleCampaigns:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(ILjava/util/ArrayList;Lcom/igaworks/adbrix/model/Space;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 342
    iput p1, p0, Lcom/igaworks/adbrix/cpe/PromotionHandler$5;->val$primaryCampaignKey:I

    iput-object p2, p0, Lcom/igaworks/adbrix/cpe/PromotionHandler$5;->val$visibleCampaigns:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/igaworks/adbrix/cpe/PromotionHandler$5;->val$space:Lcom/igaworks/adbrix/model/Space;

    iput-object p4, p0, Lcom/igaworks/adbrix/cpe/PromotionHandler$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 348
    :try_start_0
    sget-object v0, Lcom/igaworks/adbrix/cpe/PromotionHandler;->dialogOpenner:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 350
    sget-object v0, Lcom/igaworks/adbrix/cpe/PromotionHandler;->dialogOpenner:Landroid/app/Activity;

    const-string v1, "IGAW_QA"

    const-string v2, "ADBrixManager > show promotion dialog"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 354
    :try_start_1
    # getter for: Lcom/igaworks/adbrix/cpe/PromotionHandler;->promotionDialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/igaworks/adbrix/cpe/PromotionHandler;->access$000()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/igaworks/adbrix/cpe/PromotionHandler;->promotionDialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/igaworks/adbrix/cpe/PromotionHandler;->access$000()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 355
    # getter for: Lcom/igaworks/adbrix/cpe/PromotionHandler;->promotionDialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/igaworks/adbrix/cpe/PromotionHandler;->access$000()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 357
    :cond_0
    new-instance v0, Lcom/igaworks/adbrix/cpe/dialog/PromotionDialog;

    sget-object v1, Lcom/igaworks/adbrix/cpe/PromotionHandler;->dialogOpenner:Landroid/app/Activity;

    iget v2, p0, Lcom/igaworks/adbrix/cpe/PromotionHandler$5;->val$primaryCampaignKey:I

    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/PromotionHandler$5;->val$visibleCampaigns:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/igaworks/adbrix/cpe/PromotionHandler$5;->val$space:Lcom/igaworks/adbrix/model/Space;

    invoke-virtual {v4}, Lcom/igaworks/adbrix/model/Space;->getSpaceKey()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/igaworks/adbrix/cpe/PromotionHandler;->onPlayBtnClickListener:Lcom/igaworks/adbrix/interfaces/ADBrixCallbackListener;

    sget-object v6, Lcom/igaworks/adbrix/cpe/PromotionHandler;->promotionActionListener:Lcom/igaworks/adbrix/interfaces/PromotionActionListener;

    invoke-direct/range {v0 .. v6}, Lcom/igaworks/adbrix/cpe/dialog/PromotionDialog;-><init>(Landroid/content/Context;ILjava/util/List;Ljava/lang/String;Lcom/igaworks/adbrix/interfaces/ADBrixCallbackListener;Lcom/igaworks/adbrix/interfaces/PromotionActionListener;)V

    # setter for: Lcom/igaworks/adbrix/cpe/PromotionHandler;->promotionDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/igaworks/adbrix/cpe/PromotionHandler;->access$002(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 358
    new-instance v10, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v10}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 359
    .local v10, "lp":Landroid/view/WindowManager$LayoutParams;
    # getter for: Lcom/igaworks/adbrix/cpe/PromotionHandler;->promotionDialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/igaworks/adbrix/cpe/PromotionHandler;->access$000()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 360
    const/4 v0, -0x1

    iput v0, v10, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 361
    const/4 v0, -0x1

    iput v0, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 362
    # getter for: Lcom/igaworks/adbrix/cpe/PromotionHandler;->promotionDialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/igaworks/adbrix/cpe/PromotionHandler;->access$000()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 363
    # getter for: Lcom/igaworks/adbrix/cpe/PromotionHandler;->promotionDialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/igaworks/adbrix/cpe/PromotionHandler;->access$000()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 399
    .end local v10    # "lp":Landroid/view/WindowManager$LayoutParams;
    :goto_0
    return-void

    .line 365
    :catch_0
    move-exception v7

    .line 366
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "IGAW_QA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showPromotion Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 395
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 396
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 397
    const-string v0, "IGAW_QA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showPromotion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 375
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/PromotionHandler$5;->val$context:Landroid/content/Context;

    const-string v1, "IGAW_QA"

    const-string v2, "ADBrixManager > show promotion activity dialog"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 377
    sget-boolean v0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->isActive:Z

    if-eqz v0, :cond_2

    .line 378
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/PromotionHandler$5;->val$context:Landroid/content/Context;

    const-string v1, "IGAW_QA"

    const-string v2, "ADBrixManager > promotion dialog is already opened"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 389
    :catch_2
    move-exception v8

    .line 390
    .local v8, "e2":Ljava/lang/Exception;
    :try_start_4
    const-string v0, "IGAW_QA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showPromotionActivity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 380
    .end local v8    # "e2":Ljava/lang/Exception;
    :cond_2
    :try_start_5
    sget-object v0, Lcom/igaworks/adbrix/cpe/PromotionHandler;->onPlayBtnClickListener:Lcom/igaworks/adbrix/interfaces/ADBrixCallbackListener;

    sput-object v0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->onPlayBtnClickListener:Lcom/igaworks/adbrix/interfaces/ADBrixCallbackListener;

    .line 381
    sget-object v0, Lcom/igaworks/adbrix/cpe/PromotionHandler;->promotionActionListener:Lcom/igaworks/adbrix/interfaces/PromotionActionListener;

    sput-object v0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->promotionActionListener:Lcom/igaworks/adbrix/interfaces/PromotionActionListener;

    .line 382
    new-instance v9, Landroid/content/Intent;

    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/PromotionHandler$5;->val$context:Landroid/content/Context;

    const-class v1, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 383
    .local v9, "i":Landroid/content/Intent;
    const-string v0, "campaignKeys"

    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/PromotionHandler$5;->val$visibleCampaigns:Ljava/util/ArrayList;

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 384
    const-string v0, "primaryCampaignKey"

    iget v1, p0, Lcom/igaworks/adbrix/cpe/PromotionHandler$5;->val$primaryCampaignKey:I

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 385
    const-string v0, "spaceKey"

    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/PromotionHandler$5;->val$space:Lcom/igaworks/adbrix/model/Space;

    invoke-virtual {v1}, Lcom/igaworks/adbrix/model/Space;->getSpaceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    const/high16 v0, 0x10000000

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 387
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/PromotionHandler$5;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0
.end method
