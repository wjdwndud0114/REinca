.class Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$11;
.super Ljava/lang/Object;
.source "IgaworksUnityPluginAos.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos;->setExceptionPermissionList(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$exceptionPermissionList:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$11;->val$exceptionPermissionList:I

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 332
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$11;->val$exceptionPermissionList:I

    invoke-static {v0, v1}, Lcom/igaworks/adpopcorn/IgawAdpopcornExtension;->setExceptionPermissionList(Landroid/content/Context;I)V

    .line 333
    return-void
.end method
