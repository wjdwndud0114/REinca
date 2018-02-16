.class Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$50;
.super Ljava/lang/Object;
.source "IgaworksUnityPluginAos.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos;->checkCoupon(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$couponText:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$50;->val$couponText:Ljava/lang/String;

    .line 1400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1405
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$50;->val$couponText:Ljava/lang/String;

    new-instance v2, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$50$1;

    invoke-direct {v2, p0}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$50$1;-><init>(Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$50;)V

    invoke-static {v0, v1, v2}, Lcom/igaworks/coupon/IgawCoupon;->checkCoupon(Landroid/app/Activity;Ljava/lang/String;Lcom/igaworks/coupon/interfaces/CouponCallbackListener;)V

    .line 1439
    return-void
.end method
