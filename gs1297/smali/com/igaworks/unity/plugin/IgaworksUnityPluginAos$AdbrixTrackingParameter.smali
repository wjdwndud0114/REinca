.class public Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$AdbrixTrackingParameter;
.super Ljava/lang/Object;
.source "IgaworksUnityPluginAos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdbrixTrackingParameter"
.end annotation


# instance fields
.field private ck:I

.field private sub_ck:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1877
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCk()I
    .locals 1

    .prologue
    .line 1879
    iget v0, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$AdbrixTrackingParameter;->ck:I

    return v0
.end method

.method public getSub_ck()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1885
    iget-object v0, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$AdbrixTrackingParameter;->sub_ck:Ljava/lang/String;

    return-object v0
.end method

.method public setCk(I)V
    .locals 0
    .param p1, "ck"    # I

    .prologue
    .line 1882
    iput p1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$AdbrixTrackingParameter;->ck:I

    .line 1883
    return-void
.end method

.method public setSub_ck(Ljava/lang/String;)V
    .locals 0
    .param p1, "sub_ck"    # Ljava/lang/String;

    .prologue
    .line 1888
    iput-object p1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$AdbrixTrackingParameter;->sub_ck:Ljava/lang/String;

    .line 1889
    return-void
.end method
