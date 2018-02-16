.class public Lcom/tapjoy/TapjoyIntegrationException;
.super Lcom/tapjoy/TapjoyException;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyException;-><init>(Ljava/lang/String;)V

    .line 7
    return-void
.end method
