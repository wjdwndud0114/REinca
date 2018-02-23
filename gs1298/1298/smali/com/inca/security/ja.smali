.class public Lcom/inca/security/ja;
.super Ljava/lang/Object;
.source "da"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inca/security/xa;->IiiiIIIIii()Ljavax/net/ssl/HostnameVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic IiIiIiiIii:Lcom/inca/security/xa;


# direct methods
.method public constructor <init>(Lcom/inca/security/xa;)V
    .locals 0
    .param p1, "arg0"    # Lcom/inca/security/xa;

    .prologue
    .line 466
    iput-object p1, p0, Lcom/inca/security/ja;->IiIiIiiIii:Lcom/inca/security/xa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljavax/net/ssl/SSLSession;

    .prologue
    .line 451
    iget-object v0, p0, Lcom/inca/security/ja;->IiIiIiiIii:Lcom/inca/security/xa;

    invoke-static {v0}, Lcom/inca/security/xa;->IiiiIIIIii(Lcom/inca/security/xa;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 238
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
