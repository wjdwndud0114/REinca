.class Lcom/igaworks/net/JsonHttpsUrlConnectionThread$4;
.super Ljava/lang/Object;
.source "JsonHttpsUrlConnectionThread.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/net/JsonHttpsUrlConnectionThread;->getTrustedVerifier()Ljavax/net/ssl/HostnameVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/net/JsonHttpsUrlConnectionThread;


# direct methods
.method constructor <init>(Lcom/igaworks/net/JsonHttpsUrlConnectionThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/net/JsonHttpsUrlConnectionThread;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/igaworks/net/JsonHttpsUrlConnectionThread$4;->this$0:Lcom/igaworks/net/JsonHttpsUrlConnectionThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "session"    # Ljavax/net/ssl/SSLSession;

    .prologue
    .line 233
    const/4 v0, 0x1

    return v0
.end method
