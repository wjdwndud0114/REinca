.class final Lcom/igaworks/adbrix/cpe/PromotionHandler$2;
.super Ljava/lang/Object;
.source "PromotionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/cpe/PromotionHandler;->checkAvailablePromotion(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/core/RequestParameter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 296
    sget-object v0, Lcom/igaworks/adbrix/cpe/PromotionHandler;->promotionActionListener:Lcom/igaworks/adbrix/interfaces/PromotionActionListener;

    invoke-interface {v0}, Lcom/igaworks/adbrix/interfaces/PromotionActionListener;->onOpenDialog()V

    .line 297
    return-void
.end method
