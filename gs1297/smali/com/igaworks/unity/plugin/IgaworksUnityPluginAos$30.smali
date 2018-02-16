.class Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$30;
.super Ljava/lang/Object;
.source "IgaworksUnityPluginAos.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos;->categoryView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$categoryString:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$30;->val$categoryString:Ljava/lang/String;

    .line 1039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1044
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$30;->val$categoryString:Ljava/lang/String;

    invoke-static {v1}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos;->MakeCategoryFromStringForCommerceV2(Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/igaworks/adbrix/IgawAdbrix$Commerce;->categoryView(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerceProductCategoryModel;)V

    .line 1045
    return-void
.end method
