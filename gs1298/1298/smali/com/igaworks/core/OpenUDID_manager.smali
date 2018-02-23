.class public Lcom/igaworks/core/OpenUDID_manager;
.super Ljava/lang/Object;
.source "OpenUDID_manager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/igaworks/core/OpenUDID_manager$ValueComparator;
    }
.end annotation


# static fields
.field private static final LOG:Z = true

.field private static OpenUDID:Ljava/lang/String; = null

.field public static final PREFS_NAME:Ljava/lang/String; = "openudid_prefs"

.field public static final PREF_KEY:Ljava/lang/String; = "openudid"

.field public static final TAG:Ljava/lang/String; = "OpenUDID"

.field private static mInitialized:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mMatchingIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreferences:Landroid/content/SharedPreferences;

.field private final mRandom:Ljava/util/Random;

.field private mReceivedOpenUDIDs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    sput-object v0, Lcom/igaworks/core/OpenUDID_manager;->OpenUDID:Ljava/lang/String;

    .line 152
    const/4 v0, 0x0

    sput-boolean v0, Lcom/igaworks/core/OpenUDID_manager;->mInitialized:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "openudid_prefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/core/OpenUDID_manager;->mPreferences:Landroid/content/SharedPreferences;

    .line 41
    iput-object p1, p0, Lcom/igaworks/core/OpenUDID_manager;->mContext:Landroid/content/Context;

    .line 42
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/igaworks/core/OpenUDID_manager;->mRandom:Ljava/util/Random;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/igaworks/core/OpenUDID_manager;->mReceivedOpenUDIDs:Ljava/util/Map;

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/igaworks/core/OpenUDID_manager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/igaworks/core/OpenUDID_manager$1;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/igaworks/core/OpenUDID_manager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/igaworks/core/OpenUDID_manager;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/core/OpenUDID_manager;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/igaworks/core/OpenUDID_manager;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/igaworks/core/OpenUDID_manager;->OpenUDID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 25
    sput-object p0, Lcom/igaworks/core/OpenUDID_manager;->OpenUDID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/igaworks/core/OpenUDID_manager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/core/OpenUDID_manager;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/igaworks/core/OpenUDID_manager;->mMatchingIntents:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Lcom/igaworks/core/OpenUDID_manager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/igaworks/core/OpenUDID_manager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/igaworks/core/OpenUDID_manager;->mMatchingIntents:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lcom/igaworks/core/OpenUDID_manager;)V
    .locals 0
    .param p0, "x0"    # Lcom/igaworks/core/OpenUDID_manager;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/igaworks/core/OpenUDID_manager;->startService()V

    return-void
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 25
    sput-boolean p0, Lcom/igaworks/core/OpenUDID_manager;->mInitialized:Z

    return p0
.end method

.method static synthetic access$700(Lcom/igaworks/core/OpenUDID_manager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/core/OpenUDID_manager;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/igaworks/core/OpenUDID_manager;->mReceivedOpenUDIDs:Ljava/util/Map;

    return-object v0
.end method

.method private generateOpenUDID()V
    .locals 3

    .prologue
    .line 102
    iget-object v1, p0, Lcom/igaworks/core/OpenUDID_manager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/igaworks/core/OpenUDID_manager;->OpenUDID:Ljava/lang/String;

    .line 103
    sget-object v1, Lcom/igaworks/core/OpenUDID_manager;->OpenUDID:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/igaworks/core/OpenUDID_manager;->OpenUDID:Ljava/lang/String;

    const-string v2, "9774d56d682e549c"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/igaworks/core/OpenUDID_manager;->OpenUDID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf

    if-ge v1, v2, :cond_1

    .line 105
    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 106
    .local v0, "random":Ljava/security/SecureRandom;
    new-instance v1, Ljava/math/BigInteger;

    const/16 v2, 0x40

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/igaworks/core/OpenUDID_manager;->OpenUDID:Ljava/lang/String;

    .line 108
    .end local v0    # "random":Ljava/security/SecureRandom;
    :cond_1
    return-void
.end method

.method private getMostFrequentOpenUDID()V
    .locals 3

    .prologue
    .line 142
    iget-object v1, p0, Lcom/igaworks/core/OpenUDID_manager;->mReceivedOpenUDIDs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lcom/igaworks/core/OpenUDID_manager$ValueComparator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/igaworks/core/OpenUDID_manager$ValueComparator;-><init>(Lcom/igaworks/core/OpenUDID_manager;Lcom/igaworks/core/OpenUDID_manager$1;)V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 144
    .local v0, "sorted_OpenUDIDS":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/igaworks/core/OpenUDID_manager;->mReceivedOpenUDIDs:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 146
    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/igaworks/core/OpenUDID_manager;->OpenUDID:Ljava/lang/String;

    .line 148
    .end local v0    # "sorted_OpenUDIDS":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    return-void
.end method

.method public static getOpenUDID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcom/igaworks/core/OpenUDID_manager;->OpenUDID:Ljava/lang/String;

    return-object v0
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 168
    sget-boolean v0, Lcom/igaworks/core/OpenUDID_manager;->mInitialized:Z

    return v0
.end method

.method private startService()V
    .locals 6

    .prologue
    .line 116
    :try_start_0
    iget-object v3, p0, Lcom/igaworks/core/OpenUDID_manager;->mMatchingIntents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 119
    iget-object v3, p0, Lcom/igaworks/core/OpenUDID_manager;->mMatchingIntents:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v2, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 120
    .local v2, "servInfo":Landroid/content/pm/ServiceInfo;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 121
    .local v1, "i":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 123
    iget-object v3, p0, Lcom/igaworks/core/OpenUDID_manager;->mMatchingIntents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 124
    iget-object v3, p0, Lcom/igaworks/core/OpenUDID_manager;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, p0, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 139
    .end local v1    # "i":Landroid/content/Intent;
    .end local v2    # "servInfo":Landroid/content/pm/ServiceInfo;
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-direct {p0}, Lcom/igaworks/core/OpenUDID_manager;->getMostFrequentOpenUDID()V

    .line 129
    sget-object v3, Lcom/igaworks/core/OpenUDID_manager;->OpenUDID:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 130
    invoke-direct {p0}, Lcom/igaworks/core/OpenUDID_manager;->generateOpenUDID()V

    .line 133
    :cond_1
    invoke-direct {p0}, Lcom/igaworks/core/OpenUDID_manager;->storeOpenUDID()V

    .line 134
    const/4 v3, 0x1

    sput-boolean v3, Lcom/igaworks/core/OpenUDID_manager;->mInitialized:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/igaworks/core/OpenUDID_manager;->startService()V

    goto :goto_0
.end method

.method private storeOpenUDID()V
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/igaworks/core/OpenUDID_manager$1;

    invoke-direct {v1, p0}, Lcom/igaworks/core/OpenUDID_manager$1;-><init>(Lcom/igaworks/core/OpenUDID_manager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 93
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 94
    return-void
.end method

.method public static sync(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 176
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/igaworks/core/OpenUDID_manager$2;

    invoke-direct {v1, p0}, Lcom/igaworks/core/OpenUDID_manager$2;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 206
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 51
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 52
    .local v1, "data":Landroid/os/Parcel;
    iget-object v3, p0, Lcom/igaworks/core/OpenUDID_manager;->mRandom:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 54
    .local v2, "reply":Landroid/os/Parcel;
    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {p2, v3, v4, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 55
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 57
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "_openUDID":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 61
    iget-object v3, p0, Lcom/igaworks/core/OpenUDID_manager;->mReceivedOpenUDIDs:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/igaworks/core/OpenUDID_manager;->mReceivedOpenUDIDs:Ljava/util/Map;

    iget-object v3, p0, Lcom/igaworks/core/OpenUDID_manager;->mReceivedOpenUDIDs:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v0    # "_openUDID":Ljava/lang/String;
    .end local v1    # "data":Landroid/os/Parcel;
    .end local v2    # "reply":Landroid/os/Parcel;
    :cond_0
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/igaworks/core/OpenUDID_manager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 74
    invoke-direct {p0}, Lcom/igaworks/core/OpenUDID_manager;->startService()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 79
    :goto_1
    return-void

    .line 62
    .restart local v0    # "_openUDID":Ljava/lang/String;
    .restart local v1    # "data":Landroid/os/Parcel;
    .restart local v2    # "reply":Landroid/os/Parcel;
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/igaworks/core/OpenUDID_manager;->mReceivedOpenUDIDs:Ljava/util/Map;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 66
    .end local v0    # "_openUDID":Ljava/lang/String;
    .end local v1    # "data":Landroid/os/Parcel;
    .end local v2    # "reply":Landroid/os/Parcel;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 76
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 82
    return-void
.end method
