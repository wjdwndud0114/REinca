.class Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$71;
.super Ljava/lang/Object;
.source "IgaworksUnityPluginAos.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos;->setRegistrationIdEventListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1774
    new-instance v0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$71$1;

    invoke-direct {v0, p0}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$71$1;-><init>(Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$71;)V

    invoke-static {v0}, Lcom/igaworks/liveops/IgawLiveOps;->setRegistrationIdEventListener(Lcom/igaworks/liveops/pushservice/RegistrationIdEventListener;)V

    .line 1783
    return-void
.end method
