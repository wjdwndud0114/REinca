.class public Lcom/inca/security/zb;
.super Ljava/lang/Object;
.source "ga"

# interfaces
.implements Lcom/inca/security/Interface/ObjectIntegrityManager;


# static fields
.field private static synthetic IIIIiiIiII:Lcom/inca/security/zb;

.field private static final synthetic IiIiIiiIii:Ljava/util/ArrayList;

.field private static synthetic IiiIiiiIiI:Lcom/inca/security/Interface/BaseEventInvoker;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    sput-object v1, Lcom/inca/security/zb;->IIIIiiIiII:Lcom/inca/security/zb;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/inca/security/zb;->IiIiIiiIii:Ljava/util/ArrayList;

    .line 162
    sput-object v1, Lcom/inca/security/zb;->IiiIiiiIiI:Lcom/inca/security/Interface/BaseEventInvoker;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method public static IiiiIIIIii()Lcom/inca/security/zb;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/inca/security/zb;->IIIIiiIiII:Lcom/inca/security/zb;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/inca/security/zb;

    invoke-direct {v0}, Lcom/inca/security/zb;-><init>()V

    sput-object v0, Lcom/inca/security/zb;->IIIIiiIiII:Lcom/inca/security/zb;

    .line 120
    :cond_0
    sget-object v0, Lcom/inca/security/zb;->IIIIiiIiII:Lcom/inca/security/zb;

    return-object v0
.end method


# virtual methods
.method public IiiiIIIIii(Lcom/inca/security/Interface/BaseVerifier;)V
    .locals 1
    .param p1, "arg0"    # Lcom/inca/security/Interface/BaseVerifier;

    .prologue
    .line 182
    monitor-enter p0

    .line 56
    :try_start_0
    sget-object v0, Lcom/inca/security/zb;->IiIiIiiIii:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IiiiIIIIii(Ljava/lang/Object;)V
    .locals 4
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 175
    sget-object v0, Lcom/inca/security/zb;->IiiIiiiIiI:Lcom/inca/security/Interface/BaseEventInvoker;

    if-eqz v0, :cond_0

    .line 152
    sget-object v0, Lcom/inca/security/zb;->IiiIiiiIiI:Lcom/inca/security/Interface/BaseEventInvoker;

    const/4 v1, 0x2

    const/16 v2, 0xc

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/inca/security/Interface/BaseEventInvoker;->conditionCallback(II[B)V

    .line 174
    :cond_0
    return-void
.end method

.method public checkIntegrity()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 179
    monitor-enter p0

    .line 166
    :try_start_0
    sget-object v0, Lcom/inca/security/zb;->IiIiIiiIii:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    move v0, v1

    move v2, v1

    .line 81
    :goto_0
    sget-object v3, Lcom/inca/security/zb;->IiIiIiiIii:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 168
    sget-object v0, Lcom/inca/security/zb;->IiIiIiiIii:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inca/security/Interface/BaseVerifier;

    invoke-interface {v0}, Lcom/inca/security/Interface/BaseVerifier;->verify()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    monitor-exit p0

    move v0, v1

    .line 141
    :goto_1
    return v0

    .line 81
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 176
    :cond_1
    monitor-exit p0

    .line 141
    const/4 v0, 0x1

    goto :goto_1

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public iIiIIiIIIi(Lcom/inca/security/Interface/BaseVerifier;)V
    .locals 1
    .param p1, "arg0"    # Lcom/inca/security/Interface/BaseVerifier;

    .prologue
    .line 181
    monitor-enter p0

    .line 0
    :try_start_0
    sget-object v0, Lcom/inca/security/zb;->IiIiIiiIii:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 67
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerListener(Lcom/inca/security/Interface/BaseEventInvoker;)V
    .locals 0
    .param p1, "arg0"    # Lcom/inca/security/Interface/BaseEventInvoker;

    .prologue
    .line 40
    sput-object p1, Lcom/inca/security/zb;->IiiIiiiIiI:Lcom/inca/security/Interface/BaseEventInvoker;

    .line 157
    return-void
.end method
