.class final Lcom/tapjoy/TJAdUnitJSBridge$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJAdUnitJSBridge;->alert(Lorg/json/JSONObject;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tapjoy/TJAdUnitJSBridge;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJAdUnitJSBridge;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/tapjoy/TJAdUnitJSBridge$5;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    iput-object p2, p0, Lcom/tapjoy/TJAdUnitJSBridge$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 203
    .line 205
    packed-switch p2, :pswitch_data_0

    .line 218
    :goto_0
    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge$5;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-object v2, p0, Lcom/tapjoy/TJAdUnitJSBridge$5;->a:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_1
    return-void

    :pswitch_1
    move v0, v1

    .line 211
    goto :goto_0

    .line 213
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 205
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
