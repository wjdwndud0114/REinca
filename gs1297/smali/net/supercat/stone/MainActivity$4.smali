.class Lnet/supercat/stone/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/supercat/stone/MainActivity;->requestPurchase(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/supercat/stone/MainActivity;

.field final synthetic val$productID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/supercat/stone/MainActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lnet/supercat/stone/MainActivity;

    .prologue
    .line 391
    iput-object p1, p0, Lnet/supercat/stone/MainActivity$4;->this$0:Lnet/supercat/stone/MainActivity;

    iput-object p2, p0, Lnet/supercat/stone/MainActivity$4;->val$productID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 394
    iget-object v1, p0, Lnet/supercat/stone/MainActivity$4;->this$0:Lnet/supercat/stone/MainActivity;

    # getter for: Lnet/supercat/stone/MainActivity;->bp:Lcom/anjlab/android/iab/v3/BillingProcessor;
    invoke-static {v1}, Lnet/supercat/stone/MainActivity;->access$000(Lnet/supercat/stone/MainActivity;)Lcom/anjlab/android/iab/v3/BillingProcessor;

    move-result-object v1

    iget-object v2, p0, Lnet/supercat/stone/MainActivity$4;->val$productID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/anjlab/android/iab/v3/BillingProcessor;->getPurchaseTransactionDetails(Ljava/lang/String;)Lcom/anjlab/android/iab/v3/TransactionDetails;

    move-result-object v0

    .line 395
    .local v0, "details":Lcom/anjlab/android/iab/v3/TransactionDetails;
    iget-object v1, p0, Lnet/supercat/stone/MainActivity$4;->this$0:Lnet/supercat/stone/MainActivity;

    # getter for: Lnet/supercat/stone/MainActivity;->bp:Lcom/anjlab/android/iab/v3/BillingProcessor;
    invoke-static {v1}, Lnet/supercat/stone/MainActivity;->access$000(Lnet/supercat/stone/MainActivity;)Lcom/anjlab/android/iab/v3/BillingProcessor;

    move-result-object v1

    iget-object v2, p0, Lnet/supercat/stone/MainActivity$4;->val$productID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/anjlab/android/iab/v3/BillingProcessor;->consumePurchase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 396
    const-string v1, "[PlatformManager]"

    const-string v2, "NativeSetSignedData"

    iget-object v3, v0, Lcom/anjlab/android/iab/v3/TransactionDetails;->purchaseInfo:Lcom/anjlab/android/iab/v3/PurchaseInfo;

    iget-object v3, v3, Lcom/anjlab/android/iab/v3/PurchaseInfo;->responseData:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string v1, "[PlatformManager]"

    const-string v2, "NativePurchaseCompleted"

    iget-object v3, v0, Lcom/anjlab/android/iab/v3/TransactionDetails;->purchaseInfo:Lcom/anjlab/android/iab/v3/PurchaseInfo;

    iget-object v3, v3, Lcom/anjlab/android/iab/v3/PurchaseInfo;->signature:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    iget-object v1, p0, Lnet/supercat/stone/MainActivity$4;->this$0:Lnet/supercat/stone/MainActivity;

    # getter for: Lnet/supercat/stone/MainActivity;->bp:Lcom/anjlab/android/iab/v3/BillingProcessor;
    invoke-static {v1}, Lnet/supercat/stone/MainActivity;->access$000(Lnet/supercat/stone/MainActivity;)Lcom/anjlab/android/iab/v3/BillingProcessor;

    move-result-object v1

    iget-object v2, p0, Lnet/supercat/stone/MainActivity$4;->this$0:Lnet/supercat/stone/MainActivity;

    iget-object v3, p0, Lnet/supercat/stone/MainActivity$4;->this$0:Lnet/supercat/stone/MainActivity;

    iget-object v4, p0, Lnet/supercat/stone/MainActivity$4;->val$productID:Ljava/lang/String;

    # setter for: Lnet/supercat/stone/MainActivity;->lastPurchaseItemID:Ljava/lang/String;
    invoke-static {v3, v4}, Lnet/supercat/stone/MainActivity;->access$102(Lnet/supercat/stone/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/anjlab/android/iab/v3/BillingProcessor;->purchase(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 403
    const-string v1, "[PlatformManager]"

    const-string v2, "NativePurchaseCancelled"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
