.class final Lcom/tapjoy/TapjoyConnectCore$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyConnectCore;->setUserID(Ljava/lang/String;Lcom/tapjoy/TJSetUserIDListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 2138
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting userID to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2141
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->e()Lcom/tapjoy/TapjoyURLConnection;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "set_publisher_user_id?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getURLParams()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/util/Map;)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v1

    .line 2143
    const/4 v0, 0x0

    .line 2145
    iget-object v2, v1, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2147
    iget-object v0, v1, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->a(Ljava/lang/String;)Z

    move-result v0

    .line 2150
    :cond_0
    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->a(Z)V

    .line 2151
    return-void
.end method
