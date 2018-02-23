.class Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$29;
.super Ljava/lang/Object;
.source "IgaworksUnityPluginAos.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos;->addToWishList(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$purchaseDataJsonString:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$29;->val$purchaseDataJsonString:Ljava/lang/String;

    .line 1027
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1032
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$29;->val$purchaseDataJsonString:Ljava/lang/String;

    invoke-static {v1}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos;->MakeProductFromJsonForCommerceV2(Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerceProductModel;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/igaworks/adbrix/IgawAdbrix$Commerce;->addToWishList(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductModel;)V

    .line 1033
    return-void
.end method
