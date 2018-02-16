.class final Lcom/tapjoy/TapjoyConnectFlag$1;
.super Ljava/util/Hashtable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TapjoyConnectFlag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    .line 105
    const-string v0, "TJC_OPTION_SERVICE_URL"

    const-string v1, "https://ws.tapjoyads.com/"

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/TapjoyConnectFlag$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v0, "TJC_OPTION_PLACEMENT_SERVICE_URL"

    const-string v1, "https://placements.tapjoy.com/"

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/TapjoyConnectFlag$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-void
.end method
