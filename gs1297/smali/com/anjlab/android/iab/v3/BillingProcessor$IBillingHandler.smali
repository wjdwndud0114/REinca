.class public interface abstract Lcom/anjlab/android/iab/v3/BillingProcessor$IBillingHandler;
.super Ljava/lang/Object;
.source "BillingProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anjlab/android/iab/v3/BillingProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IBillingHandler"
.end annotation


# virtual methods
.method public abstract onBillingError(ILjava/lang/Throwable;)V
.end method

.method public abstract onBillingInitialized()V
.end method

.method public abstract onProductPurchased(Ljava/lang/String;Lcom/anjlab/android/iab/v3/TransactionDetails;)V
.end method

.method public abstract onPurchaseHistoryRestored()V
.end method
