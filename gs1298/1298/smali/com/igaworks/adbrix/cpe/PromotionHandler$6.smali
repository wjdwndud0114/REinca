.class final Lcom/igaworks/adbrix/cpe/PromotionHandler$6;
.super Ljava/lang/Object;
.source "PromotionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/cpe/PromotionHandler;->closePromotion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 413
    :try_start_0
    # getter for: Lcom/igaworks/adbrix/cpe/PromotionHandler;->promotionDialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/igaworks/adbrix/cpe/PromotionHandler;->access$000()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 414
    # getter for: Lcom/igaworks/adbrix/cpe/PromotionHandler;->promotionDialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/igaworks/adbrix/cpe/PromotionHandler;->access$000()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 417
    :cond_0
    sget-object v1, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->promotionDialog:Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;

    if-eqz v1, :cond_1

    .line 418
    sget-object v1, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->promotionDialog:Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;

    invoke-virtual {v1}, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->finish()V

    .line 421
    :cond_1
    const/4 v1, 0x0

    sput-object v1, Lcom/igaworks/adbrix/cpe/PromotionHandler;->dialogOpenner:Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :goto_0
    return-void

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClosePromotion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
