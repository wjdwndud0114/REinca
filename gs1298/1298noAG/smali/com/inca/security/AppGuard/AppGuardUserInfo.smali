.class public Lcom/inca/security/AppGuard/AppGuardUserInfo;
.super Ljava/lang/Object;
.source "ic"


# static fields
.field public static synthetic IiIiIiiIii:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, ""

    sput-object v0, Lcom/inca/security/AppGuard/AppGuardUserInfo;->IiIiIiiIii:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/inca/security/AppGuard/AppGuardUserInfo;->IiIiIiiIii:Ljava/lang/String;

    return-object v0
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 1
    .param p0, "arg0"    # Ljava/lang/String;

    .prologue
    .line 99
    sput-object p0, Lcom/inca/security/AppGuard/AppGuardUserInfo;->IiIiIiiIii:Ljava/lang/String;

    .line 138
    sget-object v0, Lcom/inca/security/AppGuard/AppGuardUserInfo;->IiIiIiiIii:Ljava/lang/String;

    invoke-static {v0}, Lcom/inca/security/yb;->IiiiIIIIii(Ljava/lang/String;)V

    .line 132
    return-void
.end method
