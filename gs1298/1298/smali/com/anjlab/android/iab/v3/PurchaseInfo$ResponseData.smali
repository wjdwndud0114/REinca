.class public Lcom/anjlab/android/iab/v3/PurchaseInfo$ResponseData;
.super Ljava/lang/Object;
.source "PurchaseInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anjlab/android/iab/v3/PurchaseInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResponseData"
.end annotation


# instance fields
.field public autoRenewing:Z

.field public developerPayload:Ljava/lang/String;

.field public orderId:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public productId:Ljava/lang/String;

.field public purchaseState:Lcom/anjlab/android/iab/v3/PurchaseInfo$PurchaseState;

.field public purchaseTime:Ljava/util/Date;

.field public purchaseToken:Ljava/lang/String;

.field final synthetic this$0:Lcom/anjlab/android/iab/v3/PurchaseInfo;


# direct methods
.method public constructor <init>(Lcom/anjlab/android/iab/v3/PurchaseInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/anjlab/android/iab/v3/PurchaseInfo;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/anjlab/android/iab/v3/PurchaseInfo$ResponseData;->this$0:Lcom/anjlab/android/iab/v3/PurchaseInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
