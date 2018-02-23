.class public Lcom/tapjoy/mediation/TJMediationSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/tapjoy/mediation/TJMediationSettings;


# instance fields
.field private c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/tapjoy/mediation/TJMediationSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/mediation/TJMediationSettings;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/tapjoy/mediation/TJMediationSettings;->a(I)V

    .line 18
    sget-object v0, Lcom/tapjoy/mediation/TJMediationSettings;->a:Ljava/lang/String;

    const-string v1, "Default mediation timeout set to 20s"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method private a(I)V
    .locals 4

    .prologue
    .line 44
    if-gez p1, :cond_0

    .line 45
    sget-object v0, Lcom/tapjoy/mediation/TJMediationSettings;->a:Ljava/lang/String;

    new-instance v1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v2, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTEGRATION_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v3, "Invalid type! Make sure to pass in a positive value for the `TapjoyConnectFlag.MEDIATION_TIMEOUT`"

    invoke-direct {v1, v2, v3}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tapjoy/mediation/TJMediationSettings;->c:J

    goto :goto_0
.end method

.method public static getInstance()Lcom/tapjoy/mediation/TJMediationSettings;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/tapjoy/mediation/TJMediationSettings;->b:Lcom/tapjoy/mediation/TJMediationSettings;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/tapjoy/mediation/TJMediationSettings;

    invoke-direct {v0}, Lcom/tapjoy/mediation/TJMediationSettings;-><init>()V

    sput-object v0, Lcom/tapjoy/mediation/TJMediationSettings;->b:Lcom/tapjoy/mediation/TJMediationSettings;

    .line 26
    :cond_0
    sget-object v0, Lcom/tapjoy/mediation/TJMediationSettings;->b:Lcom/tapjoy/mediation/TJMediationSettings;

    return-object v0
.end method


# virtual methods
.method public getTimeout()J
    .locals 4

    .prologue
    .line 56
    sget-object v0, Lcom/tapjoy/mediation/TJMediationSettings;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Mediation timeout set to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/tapjoy/mediation/TJMediationSettings;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-wide v0, p0, Lcom/tapjoy/mediation/TJMediationSettings;->c:J

    return-wide v0
.end method

.method public setTimeout(Ljava/lang/String;)V
    .locals 4
    .param p1, "timeoutInSeconds"    # Ljava/lang/String;

    .prologue
    .line 35
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 36
    invoke-direct {p0, v0}, Lcom/tapjoy/mediation/TJMediationSettings;->a(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    sget-object v0, Lcom/tapjoy/mediation/TJMediationSettings;->a:Ljava/lang/String;

    new-instance v1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v2, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTEGRATION_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v3, "Invalid type! Make sure to pass in an `int` type for the `TapjoyConnectFlag.MEDIATION_TIMEOUT` value"

    invoke-direct {v1, v2, v3}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    goto :goto_0
.end method
