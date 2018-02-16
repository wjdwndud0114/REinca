.class final Lcom/tapjoy/TJAdUnitJSBridge$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/TJWebViewJSInterfaceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJAdUnitJSBridge;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/TJAdUnitJSBridge;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJAdUnitJSBridge;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/tapjoy/TJAdUnitJSBridge$1;->a:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDispatchMethod(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "json"    # Lorg/json/JSONObject;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 116
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$1;->a:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnitJSBridge;->a(Lcom/tapjoy/TJAdUnitJSBridge;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const/4 v0, 0x0

    .line 123
    :try_start_0
    const-string v1, "callbackId"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 127
    :goto_0
    :try_start_1
    const-string v0, "data"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 128
    const-class v2, Lcom/tapjoy/TJAdUnitJSBridge;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/json/JSONObject;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v2, p1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 129
    const-string v3, "TJAdUnitJSBridge"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Dispatching method with method name="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";data="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";callbackID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v3, p0, Lcom/tapjoy/TJAdUnitJSBridge$1;->a:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v3}, Lcom/tapjoy/TJAdUnitJSBridge;->b(Lcom/tapjoy/TJAdUnitJSBridge;)Lcom/tapjoy/TJAdUnitJSBridge;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 136
    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_0

    .line 132
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 133
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$1;->a:Lcom/tapjoy/TJAdUnitJSBridge;

    new-array v2, v7, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
