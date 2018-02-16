.class public Lcom/unity3d/ads/properties/ClientProperties;
.super Ljava/lang/Object;
.source "ClientProperties.java"


# static fields
.field private static final DEBUG_CERT:Ljavax/security/auth/x500/X500Principal;

.field private static _activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static _application:Landroid/app/Application;

.field private static _applicationContext:Landroid/content/Context;

.field private static _gameId:Ljava/lang/String;

.field private static _listener:Lcom/unity3d/ads/IUnityAdsListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string v1, "CN=Android Debug,O=Android,C=US"

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/unity3d/ads/properties/ClientProperties;->DEBUG_CERT:Ljavax/security/auth/x500/X500Principal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/unity3d/ads/properties/ClientProperties;->_activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public static getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/unity3d/ads/properties/ClientProperties;->_applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 75
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "pkgName":Ljava/lang/String;
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 79
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-object v3

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Error getting package info"

    invoke-static {v3, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 82
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/unity3d/ads/properties/ClientProperties;->_application:Landroid/app/Application;

    return-object v0
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/unity3d/ads/properties/ClientProperties;->_applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getGameId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/unity3d/ads/properties/ClientProperties;->_gameId:Ljava/lang/String;

    return-object v0
.end method

.method public static getListener()Lcom/unity3d/ads/IUnityAdsListener;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/unity3d/ads/properties/ClientProperties;->_listener:Lcom/unity3d/ads/IUnityAdsListener;

    return-object v0
.end method

.method public static isAppDebuggable()Z
    .locals 16

    .prologue
    const/4 v12, 0x0

    .line 87
    const/4 v4, 0x0

    .line 88
    .local v4, "debuggable":Z
    const/4 v3, 0x0

    .line 92
    .local v3, "couldNotGetApplicationInfo":Z
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 93
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 94
    .local v8, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 101
    .local v7, "pkgName":Ljava/lang/String;
    const/4 v13, 0x0

    :try_start_0
    invoke-virtual {v8, v7, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 102
    .local v0, "appinfo":Landroid/content/pm/ApplicationInfo;
    iget v13, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v13, v13, 0x2

    iput v13, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v13, :cond_0

    .line 103
    const/4 v4, 0x1

    .line 111
    .end local v0    # "appinfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 113
    const/16 v13, 0x40

    :try_start_1
    invoke-virtual {v8, v7, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 114
    .local v6, "pinfo":Landroid/content/pm/PackageInfo;
    iget-object v10, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 116
    .local v10, "signatures":[Landroid/content/pm/Signature;
    array-length v13, v10

    :goto_1
    if-ge v12, v13, :cond_1

    aget-object v9, v10, v12

    .line 117
    .local v9, "signature":Landroid/content/pm/Signature;
    const-string v14, "X.509"

    invoke-static {v14}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 118
    .local v2, "cf":Ljava/security/cert/CertificateFactory;
    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v9}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v14

    invoke-direct {v11, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 119
    .local v11, "stream":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v2, v11}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 120
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v14

    sget-object v15, Lcom/unity3d/ads/properties/ClientProperties;->DEBUG_CERT:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v14, v15}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v4

    .line 121
    if-eqz v4, :cond_3

    .line 133
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v2    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v4    # "debuggable":Z
    .end local v6    # "pinfo":Landroid/content/pm/PackageInfo;
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    .end local v9    # "signature":Landroid/content/pm/Signature;
    .end local v10    # "signatures":[Landroid/content/pm/Signature;
    .end local v11    # "stream":Ljava/io/ByteArrayInputStream;
    :cond_1
    :goto_2
    return v4

    .restart local v4    # "debuggable":Z
    :cond_2
    move v4, v12

    .line 97
    goto :goto_2

    .line 106
    .restart local v7    # "pkgName":Ljava/lang/String;
    .restart local v8    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v5

    .line 107
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v13, "Could not find name"

    invoke-static {v13, v5}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 108
    const/4 v3, 0x1

    goto :goto_0

    .line 116
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v2    # "cf":Ljava/security/cert/CertificateFactory;
    .restart local v6    # "pinfo":Landroid/content/pm/PackageInfo;
    .restart local v9    # "signature":Landroid/content/pm/Signature;
    .restart local v10    # "signatures":[Landroid/content/pm/Signature;
    .restart local v11    # "stream":Ljava/io/ByteArrayInputStream;
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 125
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v2    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v6    # "pinfo":Landroid/content/pm/PackageInfo;
    .end local v9    # "signature":Landroid/content/pm/Signature;
    .end local v10    # "signatures":[Landroid/content/pm/Signature;
    .end local v11    # "stream":Ljava/io/ByteArrayInputStream;
    :catch_1
    move-exception v5

    .line 126
    .restart local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v12, "Could not find name"

    invoke-static {v12, v5}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    .line 128
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v5

    .line 129
    .local v5, "e":Ljava/security/cert/CertificateException;
    const-string v12, "Certificate exception"

    invoke-static {v12, v5}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method public static setActivity(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 35
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/unity3d/ads/properties/ClientProperties;->_activity:Ljava/lang/ref/WeakReference;

    .line 36
    return-void
.end method

.method public static setApplication(Landroid/app/Application;)V
    .locals 0
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 51
    sput-object p0, Lcom/unity3d/ads/properties/ClientProperties;->_application:Landroid/app/Application;

    .line 52
    return-void
.end method

.method public static setApplicationContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    sput-object p0, Lcom/unity3d/ads/properties/ClientProperties;->_applicationContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method public static setGameId(Ljava/lang/String;)V
    .locals 0
    .param p0, "gameId"    # Ljava/lang/String;

    .prologue
    .line 67
    sput-object p0, Lcom/unity3d/ads/properties/ClientProperties;->_gameId:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public static setListener(Lcom/unity3d/ads/IUnityAdsListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/unity3d/ads/IUnityAdsListener;

    .prologue
    .line 59
    sput-object p0, Lcom/unity3d/ads/properties/ClientProperties;->_listener:Lcom/unity3d/ads/IUnityAdsListener;

    .line 60
    return-void
.end method
