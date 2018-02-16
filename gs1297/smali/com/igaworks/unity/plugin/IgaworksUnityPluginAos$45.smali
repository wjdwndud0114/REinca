.class Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$45;
.super Ljava/lang/Object;
.source "IgaworksUnityPluginAos.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos;->setGender(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$gender:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$45;->val$gender:I

    .line 1213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1218
    iget v0, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$45;->val$gender:I

    invoke-static {v0}, Lcom/igaworks/adbrix/IgawAdbrix;->setGender(I)V

    .line 1219
    return-void
.end method
