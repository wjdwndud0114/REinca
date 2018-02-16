.class public Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$CouponKeyPair;
.super Ljava/lang/Object;
.source "IgaworksUnityPluginAos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CouponKeyPair"
.end annotation


# instance fields
.field private key:Ljava/lang/String;

.field private val:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1304
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$CouponKeyPair;->key:Ljava/lang/String;

    .line 1305
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$CouponKeyPair;->val:Ljava/lang/String;

    .line 1316
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 1307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1304
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$CouponKeyPair;->key:Ljava/lang/String;

    .line 1305
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$CouponKeyPair;->val:Ljava/lang/String;

    .line 1309
    iput-object p1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$CouponKeyPair;->key:Ljava/lang/String;

    .line 1310
    iput-object p2, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$CouponKeyPair;->val:Ljava/lang/String;

    .line 1311
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$CouponKeyPair;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1336
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$CouponKeyPair;->key:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$CouponKeyPair;->val:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$CouponKeyPair;->val:Ljava/lang/String;

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1323
    iput-object p1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$CouponKeyPair;->key:Ljava/lang/String;

    .line 1324
    return-void
.end method

.method public setVal(Ljava/lang/String;)V
    .locals 0
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 1331
    iput-object p1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$CouponKeyPair;->val:Ljava/lang/String;

    .line 1332
    return-void
.end method
