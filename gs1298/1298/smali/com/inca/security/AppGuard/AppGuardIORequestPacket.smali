.class public Lcom/inca/security/AppGuard/AppGuardIORequestPacket;
.super Ljava/lang/Object;
.source "rc" #rc


# static fields
.field private static synthetic IIIIiiIiII:Lcom/inca/security/AppGuard/AppGuardIORequestPacket;

.field private static synthetic IiIiIiiIii:Lcom/inca/security/rc;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    sput-object v0, Lcom/inca/security/AppGuard/AppGuardIORequestPacket;->IIIIiiIiII:Lcom/inca/security/AppGuard/AppGuardIORequestPacket;

    .line 31
    sput-object v0, Lcom/inca/security/AppGuard/AppGuardIORequestPacket;->IiIiIiiIii:Lcom/inca/security/rc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    invoke-static {}, Lcom/inca/security/rc;->IiiiIIIIii()Lcom/inca/security/rc;

    move-result-object v0

    sput-object v0, Lcom/inca/security/AppGuard/AppGuardIORequestPacket;->IiIiIiiIii:Lcom/inca/security/rc;

    .line 132
    return-void
.end method

.method public static getInstance()Lcom/inca/security/AppGuard/AppGuardIORequestPacket;
    .locals 2

    .prologue
    .line 72
    sget-object v0, Lcom/inca/security/AppGuard/AppGuardIORequestPacket;->IIIIiiIiII:Lcom/inca/security/AppGuard/AppGuardIORequestPacket;

    if-nez v0, :cond_0

    .line 30
    const-class v1, Lcom/inca/security/AppGuard/AppGuardIORequestPacket;

    monitor-enter v1

    .line 87
    :try_start_0
    new-instance v0, Lcom/inca/security/AppGuard/AppGuardIORequestPacket;

    invoke-direct {v0}, Lcom/inca/security/AppGuard/AppGuardIORequestPacket;-><init>()V

    sput-object v0, Lcom/inca/security/AppGuard/AppGuardIORequestPacket;->IIIIiiIiII:Lcom/inca/security/AppGuard/AppGuardIORequestPacket;

    .line 165
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_0
    sget-object v0, Lcom/inca/security/AppGuard/AppGuardIORequestPacket;->IIIIiiIiII:Lcom/inca/security/AppGuard/AppGuardIORequestPacket;

    return-object v0

    .line 165
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public buildJsonPacket(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 141
    sget-object v0, Lcom/inca/security/AppGuard/AppGuardIORequestPacket;->IiIiIiiIii:Lcom/inca/security/rc;

    invoke-virtual {v0, p1}, Lcom/inca/security/rc;->iIiIIiIIIi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public buildPacket([B)[B
    .locals 1
    .param p1, "arg0"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 61
    sget-object v0, Lcom/inca/security/AppGuard/AppGuardIORequestPacket;->IiIiIiiIii:Lcom/inca/security/rc;

    invoke-virtual {v0, p1}, Lcom/inca/security/rc;->iIiIIiIIIi([B)[B

    move-result-object v0

    return-object v0
.end method

.method public parseJsonPacket(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 81
    sget-object v0, Lcom/inca/security/AppGuard/AppGuardIORequestPacket;->IiIiIiiIii:Lcom/inca/security/rc;

    invoke-virtual {v0, p1}, Lcom/inca/security/rc;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parsePacket([B)[B
    .locals 1
    .param p1, "arg0"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 146
    sget-object v0, Lcom/inca/security/AppGuard/AppGuardIORequestPacket;->IiIiIiiIii:Lcom/inca/security/rc;

    invoke-virtual {v0, p1}, Lcom/inca/security/rc;->IiiiIIIIii([B)[B

    move-result-object v0

    return-object v0
.end method

.method public prepare([B)Z
    .locals 2
    .param p1, "arg0"    # [B

    .prologue
    .line 96
    sget-object v0, Lcom/inca/security/AppGuard/AppGuardIORequestPacket;->IiIiIiiIii:Lcom/inca/security/rc;

    sget-object v1, Lcom/inca/security/lc;->IiIiIiiIii:Lcom/inca/security/lc;

    invoke-virtual {v0, v1, p1}, Lcom/inca/security/rc;->IiiiIIIIii(Lcom/inca/security/lc;[B)Z

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/inca/security/AppGuard/AppGuardIORequestPacket;->IiIiIiiIii:Lcom/inca/security/rc;

    invoke-virtual {v0}, Lcom/inca/security/rc;->IiiiIIIIii()V

    .line 120
    return-void
.end method

.method public setUuidAttachment()V
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/inca/security/AppGuard/AppGuardIORequestPacket;->IiIiIiiIii:Lcom/inca/security/rc;

    invoke-virtual {v0}, Lcom/inca/security/rc;->iIiIIiIIIi()V

    .line 181
    return-void
.end method
