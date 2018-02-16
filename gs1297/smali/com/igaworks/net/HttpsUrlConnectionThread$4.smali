.class Lcom/igaworks/net/HttpsUrlConnectionThread$4;
.super Ljava/lang/Object;
.source "HttpsUrlConnectionThread.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/net/HttpsUrlConnectionThread;->getTrustedVerifier()Ljavax/net/ssl/HostnameVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/net/HttpsUrlConnectionThread;


# direct methods
.method constructor <init>(Lcom/igaworks/net/HttpsUrlConnectionThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/net/HttpsUrlConnectionThread;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/igaworks/net/HttpsUrlConnectionThread$4;->this$0:Lcom/igaworks/net/HttpsUrlConnectionThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "session"    # Ljavax/net/ssl/SSLSession;

    .prologue
    .line 282
    const/4 v0, 0x1

    return v0
.end method
