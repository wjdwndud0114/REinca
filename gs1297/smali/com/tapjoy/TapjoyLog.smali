.class public Lcom/tapjoy/TapjoyLog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:Z

.field private static f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/tapjoy/TapjoyLog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyLog;->a:Ljava/lang/String;

    .line 28
    const/4 v0, 0x6

    sput v0, Lcom/tapjoy/TapjoyLog;->b:I

    .line 29
    const/4 v0, 0x4

    sput v0, Lcom/tapjoy/TapjoyLog;->c:I

    .line 30
    const/4 v0, 0x2

    sput v0, Lcom/tapjoy/TapjoyLog;->d:I

    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tapjoy/TapjoyLog;->e:Z

    .line 33
    sget v0, Lcom/tapjoy/TapjoyLog;->b:I

    sput v0, Lcom/tapjoy/TapjoyLog;->f:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/tapjoy/TapjoyLog;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tapjoy/TapjoyLog;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 182
    sget v0, Lcom/tapjoy/TapjoyLog;->f:I

    if-gt v0, p0, :cond_2

    .line 184
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1000

    if-le v0, v1, :cond_1

    .line 186
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit16 v1, v1, 0x1000

    if-gt v0, v1, :cond_2

    .line 188
    mul-int/lit16 v3, v0, 0x1000

    .line 189
    add-int/lit8 v1, v0, 0x1

    mul-int/lit16 v1, v1, 0x1000

    .line 190
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v1, v4, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 191
    :cond_0
    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v2, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_1
    invoke-static {p0, v2, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_2
    return-void
.end method

.method static a(Ljava/lang/String;Z)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 67
    if-nez p1, :cond_0

    .line 70
    invoke-static {}, Lcom/tapjoy/TapjoyAppSettings;->getInstance()Lcom/tapjoy/TapjoyAppSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tapjoy/TapjoyAppSettings;->getInstance()Lcom/tapjoy/TapjoyAppSettings;

    move-result-object v0

    .line 1094
    iget-object v0, v0, Lcom/tapjoy/TapjoyAppSettings;->a:Ljava/lang/String;

    .line 70
    if-eqz v0, :cond_0

    .line 71
    sget-object v0, Lcom/tapjoy/TapjoyLog;->a:Ljava/lang/String;

    const-string v1, "setLoggingLevel -- log setting already persisted"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :goto_0
    return-void

    .line 76
    :cond_0
    const-string v0, "internal"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    sget v0, Lcom/tapjoy/TapjoyLog;->d:I

    sput v0, Lcom/tapjoy/TapjoyLog;->f:I

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 80
    new-instance v1, Lcom/tapjoy/TapjoyLog$1;

    invoke-direct {v1}, Lcom/tapjoy/TapjoyLog$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 97
    :cond_1
    :goto_1
    sget-object v0, Lcom/tapjoy/TapjoyLog;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "logThreshold="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/tapjoy/TapjoyLog;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_2
    const-string v0, "debug_on"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    sget v0, Lcom/tapjoy/TapjoyLog;->c:I

    sput v0, Lcom/tapjoy/TapjoyLog;->f:I

    goto :goto_1

    .line 90
    :cond_3
    const-string v0, "debug_off"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 91
    sget v0, Lcom/tapjoy/TapjoyLog;->b:I

    sput v0, Lcom/tapjoy/TapjoyLog;->f:I

    goto :goto_1

    .line 93
    :cond_4
    sget-object v0, Lcom/tapjoy/TapjoyLog;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unrecognized loggingLevel: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    sget v0, Lcom/tapjoy/TapjoyLog;->b:I

    sput v0, Lcom/tapjoy/TapjoyLog;->f:I

    goto :goto_1
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 159
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/tapjoy/TapjoyLog;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public static e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "error"    # Lcom/tapjoy/TapjoyErrorMessage;

    .prologue
    .line 135
    if-eqz p1, :cond_1

    .line 136
    sget v0, Lcom/tapjoy/TapjoyLog;->f:I

    sget v1, Lcom/tapjoy/TapjoyLog;->d:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/tapjoy/TapjoyErrorMessage;->getType()Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTERNAL_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    if-eq v0, v1, :cond_1

    .line 137
    :cond_0
    const/4 v0, 0x6

    invoke-virtual {p1}, Lcom/tapjoy/TapjoyErrorMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/tapjoy/TapjoyLog;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 126
    new-instance v0, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v1, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTERNAL_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    invoke-direct {v0, v1, p1}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 127
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 116
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/tapjoy/TapjoyLog;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public static isLoggingEnabled()Z
    .locals 1

    .prologue
    .line 105
    sget-boolean v0, Lcom/tapjoy/TapjoyLog;->e:Z

    return v0
.end method

.method public static setDebugEnabled(Z)V
    .locals 2
    .param p0, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 43
    sput-boolean p0, Lcom/tapjoy/TapjoyLog;->e:Z

    .line 44
    invoke-static {p0}, Lcom/tapjoy/internal/fn;->a(Z)V

    .line 46
    sget-boolean v0, Lcom/tapjoy/TapjoyLog;->e:Z

    if-eqz v0, :cond_0

    .line 47
    const-string v0, "debug_on"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->a(Ljava/lang/String;Z)V

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    const-string v0, "debug_off"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static setInternalLogging(Z)V
    .locals 2
    .param p0, "isInternalLogging"    # Z

    .prologue
    .line 54
    if-eqz p0, :cond_0

    .line 55
    const-string v0, "internal"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->a(Ljava/lang/String;Z)V

    .line 57
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 169
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/tapjoy/TapjoyLog;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 149
    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/tapjoy/TapjoyLog;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method
