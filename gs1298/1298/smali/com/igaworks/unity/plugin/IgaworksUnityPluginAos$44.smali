.class Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$44;
.super Ljava/lang/Object;
.source "IgaworksUnityPluginAos.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos;->setAge(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$age:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$44;->val$age:I

    .line 1202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1207
    iget v0, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$44;->val$age:I

    invoke-static {v0}, Lcom/igaworks/adbrix/IgawAdbrix;->setAge(I)V

    .line 1208
    return-void
.end method
