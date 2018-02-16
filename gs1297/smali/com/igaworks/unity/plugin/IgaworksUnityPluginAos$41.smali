.class Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$41;
.super Ljava/lang/Object;
.source "IgaworksUnityPluginAos.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos;->buy(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$41;->val$name:Ljava/lang/String;

    .line 1169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$41;->val$name:Ljava/lang/String;

    invoke-static {v0}, Lcom/igaworks/adbrix/IgawAdbrix;->buy(Ljava/lang/String;)V

    .line 1175
    return-void
.end method
