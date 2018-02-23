.class public Lcom/inca/security/Proxy/AppGuardProxyManager$ProxyAPIParam;
.super Ljava/lang/Object;
.source "sb"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inca/security/Proxy/AppGuardProxyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyAPIParam"
.end annotation


# instance fields
.field public synthetic IIIIiiIiII:I

.field public final synthetic IiIiIiiIii:Lcom/inca/security/Proxy/AppGuardProxyManager;

.field public synthetic IiiIiiiIiI:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/inca/security/Proxy/AppGuardProxyManager;ILjava/lang/Object;)V
    .locals 0
    .param p1, "arg0"    # Lcom/inca/security/Proxy/AppGuardProxyManager;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/inca/security/Proxy/AppGuardProxyManager$ProxyAPIParam;->IiIiIiiIii:Lcom/inca/security/Proxy/AppGuardProxyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput p2, p0, Lcom/inca/security/Proxy/AppGuardProxyManager$ProxyAPIParam;->IIIIiiIiII:I

    .line 179
    iput-object p3, p0, Lcom/inca/security/Proxy/AppGuardProxyManager$ProxyAPIParam;->IiiIiiiIiI:Ljava/lang/Object;

    .line 166
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/inca/security/Proxy/AppGuardProxyManager$ProxyAPIParam;->IiiIiiiIiI:Ljava/lang/Object;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/inca/security/Proxy/AppGuardProxyManager$ProxyAPIParam;->IIIIiiIiII:I

    return v0
.end method
