.class final Lcom/tapjoy/TJCurrency$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJCurrency;->awardCurrency(ILcom/tapjoy/TJAwardCurrencyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/TJCurrency;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJCurrency;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/tapjoy/TJCurrency$3;->a:Lcom/tapjoy/TJCurrency;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 140
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 144
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getGenericURLParams()Ljava/util/Map;

    move-result-object v1

    .line 145
    const-string v4, "tap_points"

    iget-object v5, p0, Lcom/tapjoy/TJCurrency$3;->a:Lcom/tapjoy/TJCurrency;

    iget v5, v5, Lcom/tapjoy/TJCurrency;->b:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5, v6}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 147
    const-string v4, "guid"

    invoke-static {v1, v4, v0, v6}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 148
    const-string v4, "timestamp"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5, v6}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 149
    const-string v4, "verifier"

    iget-object v5, p0, Lcom/tapjoy/TJCurrency$3;->a:Lcom/tapjoy/TJCurrency;

    iget v5, v5, Lcom/tapjoy/TJCurrency;->b:I

    invoke-static {v2, v3, v5, v0}, Lcom/tapjoy/TapjoyConnectCore;->getAwardCurrencyVerifier(JILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v4, v0, v6}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 151
    new-instance v0, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {v0}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "points/award?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/util/Map;)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/tapjoy/TJCurrency$3;->a:Lcom/tapjoy/TJCurrency;

    invoke-static {v1, v0}, Lcom/tapjoy/TJCurrency;->c(Lcom/tapjoy/TJCurrency;Lcom/tapjoy/TapjoyHttpURLResponse;)V

    .line 154
    return-void
.end method
