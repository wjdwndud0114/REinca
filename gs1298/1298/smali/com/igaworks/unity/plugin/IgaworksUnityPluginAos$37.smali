.class Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$37;
.super Ljava/lang/Object;
.source "IgaworksUnityPluginAos.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos;->firstTimeExperience(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$37;->val$name:Ljava/lang/String;

    .line 1125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$37;->val$name:Ljava/lang/String;

    invoke-static {v0}, Lcom/igaworks/adbrix/IgawAdbrix;->firstTimeExperience(Ljava/lang/String;)V

    .line 1131
    return-void
.end method
