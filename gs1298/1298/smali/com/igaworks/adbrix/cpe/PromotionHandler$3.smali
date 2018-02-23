.class final Lcom/igaworks/adbrix/cpe/PromotionHandler$3;
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
    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 309
    sget-object v0, Lcom/igaworks/adbrix/cpe/PromotionHandler;->promotionActionListener:Lcom/igaworks/adbrix/interfaces/PromotionActionListener;

    invoke-interface {v0}, Lcom/igaworks/adbrix/interfaces/PromotionActionListener;->onNoADAvailable()V

    .line 310
    return-void
.end method
