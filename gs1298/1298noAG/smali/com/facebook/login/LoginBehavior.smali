.class public final enum Lcom/facebook/login/LoginBehavior;
.super Ljava/lang/Enum;
.source "LoginBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/login/LoginBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/login/LoginBehavior;

.field public static final enum DEVICE_AUTH:Lcom/facebook/login/LoginBehavior;

.field public static final enum NATIVE_ONLY:Lcom/facebook/login/LoginBehavior;

.field public static final enum NATIVE_WITH_FALLBACK:Lcom/facebook/login/LoginBehavior;

.field public static final enum WEB_ONLY:Lcom/facebook/login/LoginBehavior;

.field public static final enum WEB_VIEW_ONLY:Lcom/facebook/login/LoginBehavior;


# instance fields
.field private final allowsCustomTabAuth:Z

.field private final allowsDeviceAuth:Z

.field private final allowsKatanaAuth:Z

.field private final allowsWebViewAuth:Z


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/facebook/login/LoginBehavior;

    const-string v1, "NATIVE_WITH_FALLBACK"

    move v4, v3

    move v5, v2

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/facebook/login/LoginBehavior;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/facebook/login/LoginBehavior;->NATIVE_WITH_FALLBACK:Lcom/facebook/login/LoginBehavior;

    .line 37
    new-instance v4, Lcom/facebook/login/LoginBehavior;

    const-string v5, "NATIVE_ONLY"

    move v6, v3

    move v7, v3

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v4 .. v10}, Lcom/facebook/login/LoginBehavior;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v4, Lcom/facebook/login/LoginBehavior;->NATIVE_ONLY:Lcom/facebook/login/LoginBehavior;

    .line 42
    new-instance v4, Lcom/facebook/login/LoginBehavior;

    const-string v5, "WEB_ONLY"

    move v6, v11

    move v7, v2

    move v8, v3

    move v9, v2

    move v10, v3

    invoke-direct/range {v4 .. v10}, Lcom/facebook/login/LoginBehavior;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v4, Lcom/facebook/login/LoginBehavior;->WEB_ONLY:Lcom/facebook/login/LoginBehavior;

    .line 47
    new-instance v4, Lcom/facebook/login/LoginBehavior;

    const-string v5, "WEB_VIEW_ONLY"

    move v6, v12

    move v7, v2

    move v8, v3

    move v9, v2

    move v10, v2

    invoke-direct/range {v4 .. v10}, Lcom/facebook/login/LoginBehavior;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v4, Lcom/facebook/login/LoginBehavior;->WEB_VIEW_ONLY:Lcom/facebook/login/LoginBehavior;

    .line 54
    new-instance v4, Lcom/facebook/login/LoginBehavior;

    const-string v5, "DEVICE_AUTH"

    move v6, v13

    move v7, v2

    move v8, v2

    move v9, v3

    move v10, v2

    invoke-direct/range {v4 .. v10}, Lcom/facebook/login/LoginBehavior;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v4, Lcom/facebook/login/LoginBehavior;->DEVICE_AUTH:Lcom/facebook/login/LoginBehavior;

    .line 26
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/facebook/login/LoginBehavior;

    sget-object v1, Lcom/facebook/login/LoginBehavior;->NATIVE_WITH_FALLBACK:Lcom/facebook/login/LoginBehavior;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/login/LoginBehavior;->NATIVE_ONLY:Lcom/facebook/login/LoginBehavior;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/login/LoginBehavior;->WEB_ONLY:Lcom/facebook/login/LoginBehavior;

    aput-object v1, v0, v11

    sget-object v1, Lcom/facebook/login/LoginBehavior;->WEB_VIEW_ONLY:Lcom/facebook/login/LoginBehavior;

    aput-object v1, v0, v12

    sget-object v1, Lcom/facebook/login/LoginBehavior;->DEVICE_AUTH:Lcom/facebook/login/LoginBehavior;

    aput-object v1, v0, v13

    sput-object v0, Lcom/facebook/login/LoginBehavior;->$VALUES:[Lcom/facebook/login/LoginBehavior;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZZZ)V
    .locals 0
    .param p3, "allowsKatanaAuth"    # Z
    .param p4, "allowsWebViewAuth"    # Z
    .param p5, "allowsDeviceAuth"    # Z
    .param p6, "allowsCustomTabAuth"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZZ)V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    iput-boolean p3, p0, Lcom/facebook/login/LoginBehavior;->allowsKatanaAuth:Z

    .line 67
    iput-boolean p4, p0, Lcom/facebook/login/LoginBehavior;->allowsWebViewAuth:Z

    .line 68
    iput-boolean p5, p0, Lcom/facebook/login/LoginBehavior;->allowsDeviceAuth:Z

    .line 69
    iput-boolean p6, p0, Lcom/facebook/login/LoginBehavior;->allowsCustomTabAuth:Z

    .line 70
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/login/LoginBehavior;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcom/facebook/login/LoginBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/login/LoginBehavior;

    return-object v0
.end method

.method public static values()[Lcom/facebook/login/LoginBehavior;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/facebook/login/LoginBehavior;->$VALUES:[Lcom/facebook/login/LoginBehavior;

    invoke-virtual {v0}, [Lcom/facebook/login/LoginBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/login/LoginBehavior;

    return-object v0
.end method


# virtual methods
.method allowsCustomTabAuth()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/facebook/login/LoginBehavior;->allowsCustomTabAuth:Z

    return v0
.end method

.method allowsDeviceAuth()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/facebook/login/LoginBehavior;->allowsDeviceAuth:Z

    return v0
.end method

.method allowsKatanaAuth()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/facebook/login/LoginBehavior;->allowsKatanaAuth:Z

    return v0
.end method

.method allowsWebViewAuth()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/facebook/login/LoginBehavior;->allowsWebViewAuth:Z

    return v0
.end method
