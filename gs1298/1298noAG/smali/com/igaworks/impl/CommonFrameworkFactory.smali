.class public Lcom/igaworks/impl/CommonFrameworkFactory;
.super Ljava/lang/Object;
.source "CommonFrameworkFactory.java"


# static fields
.field public static isHasAdbrixSDK:Z

.field public static isHasAdpopcornSDK:Z

.field public static isHasDisplayAdSDK:Z

.field public static isHasLiveOpsSDK:Z

.field public static isHasPlusLockSDK:Z

.field private static singleton:Lcom/igaworks/interfaces/CommonInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8
    sput-boolean v0, Lcom/igaworks/impl/CommonFrameworkFactory;->isHasAdbrixSDK:Z

    .line 9
    sput-boolean v0, Lcom/igaworks/impl/CommonFrameworkFactory;->isHasLiveOpsSDK:Z

    .line 10
    sput-boolean v0, Lcom/igaworks/impl/CommonFrameworkFactory;->isHasAdpopcornSDK:Z

    .line 11
    sput-boolean v0, Lcom/igaworks/impl/CommonFrameworkFactory;->isHasPlusLockSDK:Z

    .line 12
    sput-boolean v0, Lcom/igaworks/impl/CommonFrameworkFactory;->isHasDisplayAdSDK:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCommonFramework()Lcom/igaworks/interfaces/CommonInterface;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 16
    sget-object v1, Lcom/igaworks/impl/CommonFrameworkFactory;->singleton:Lcom/igaworks/interfaces/CommonInterface;

    if-nez v1, :cond_0

    .line 18
    new-instance v1, Lcom/igaworks/impl/CommonFrameworkFactory$1;

    invoke-direct {v1}, Lcom/igaworks/impl/CommonFrameworkFactory$1;-><init>()V

    sput-object v1, Lcom/igaworks/impl/CommonFrameworkFactory;->singleton:Lcom/igaworks/interfaces/CommonInterface;

    .line 23
    :cond_0
    :try_start_0
    const-string v1, "com.igaworks.adbrix.IgawAdbrix"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 24
    const/4 v1, 0x1

    sput-boolean v1, Lcom/igaworks/impl/CommonFrameworkFactory;->isHasAdbrixSDK:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    const-string v1, "com.igaworks.adbrix.impl.ADBrixFrameworkFactory"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 31
    const/4 v1, 0x1

    sput-boolean v1, Lcom/igaworks/impl/CommonFrameworkFactory;->isHasAdbrixSDK:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 37
    :goto_1
    :try_start_2
    const-string v1, "com.igaworks.liveops.pushservice.LiveOpsPushService"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 38
    const/4 v1, 0x1

    sput-boolean v1, Lcom/igaworks/impl/CommonFrameworkFactory;->isHasLiveOpsSDK:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 44
    :goto_2
    :try_start_3
    const-string v1, "com.igaworks.commerce.impl.CommerceFrameworkFactory"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 49
    :goto_3
    :try_start_4
    const-string v1, "com.igaworks.adpopcorn.IgawAdpopcorn"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 50
    const/4 v1, 0x1

    sput-boolean v1, Lcom/igaworks/impl/CommonFrameworkFactory;->isHasAdpopcornSDK:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 56
    :goto_4
    :try_start_5
    const-string v1, "com.igaworks.adpopcorn.pluslock.IgawPlusLock"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 57
    const/4 v1, 0x1

    sput-boolean v1, Lcom/igaworks/impl/CommonFrameworkFactory;->isHasPlusLockSDK:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 63
    :goto_5
    :try_start_6
    const-string v1, "com.igaworks.displayad.IgawDisplayAd"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 64
    const/4 v1, 0x1

    sput-boolean v1, Lcom/igaworks/impl/CommonFrameworkFactory;->isHasDisplayAdSDK:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 69
    :goto_6
    sget-object v1, Lcom/igaworks/impl/CommonFrameworkFactory;->singleton:Lcom/igaworks/interfaces/CommonInterface;

    return-object v1

    .line 25
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 26
    .restart local v0    # "e":Ljava/lang/Exception;
    sput-boolean v2, Lcom/igaworks/impl/CommonFrameworkFactory;->isHasAdbrixSDK:Z

    goto :goto_0

    .line 32
    :catch_1
    move-exception v0

    .line 33
    sput-boolean v2, Lcom/igaworks/impl/CommonFrameworkFactory;->isHasAdbrixSDK:Z

    goto :goto_1

    .line 39
    :catch_2
    move-exception v0

    .line 40
    sput-boolean v2, Lcom/igaworks/impl/CommonFrameworkFactory;->isHasLiveOpsSDK:Z

    goto :goto_2

    .line 51
    :catch_3
    move-exception v0

    .line 52
    sput-boolean v2, Lcom/igaworks/impl/CommonFrameworkFactory;->isHasAdpopcornSDK:Z

    goto :goto_4

    .line 58
    :catch_4
    move-exception v0

    .line 59
    sput-boolean v2, Lcom/igaworks/impl/CommonFrameworkFactory;->isHasPlusLockSDK:Z

    goto :goto_5

    .line 65
    :catch_5
    move-exception v0

    .line 66
    sput-boolean v2, Lcom/igaworks/impl/CommonFrameworkFactory;->isHasDisplayAdSDK:Z

    goto :goto_6

    .line 45
    :catch_6
    move-exception v1

    goto :goto_3
.end method
