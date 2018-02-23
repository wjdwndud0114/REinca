.class public Lcom/tapjoy/TapjoyGpsHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:I

.field private e:I

.field private f:Z

.field private g:Ljava/lang/Boolean;

.field private h:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v0, p0, Lcom/tapjoy/TapjoyGpsHelper;->d:I

    .line 14
    iput v0, p0, Lcom/tapjoy/TapjoyGpsHelper;->e:I

    .line 21
    iput-object p1, p0, Lcom/tapjoy/TapjoyGpsHelper;->a:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method public checkGooglePlayIntegration()V
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyGpsHelper;->isGooglePlayServicesAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/tapjoy/TapjoyIntegrationException;

    const-string v1, "Tapjoy SDK is disabled because Google Play Services was not found. For more information about including the Google Play services client library visit http://developer.android.com/google/play-services/setup.html or http://tech.tapjoy.com/product-overview/sdk-change-log/tapjoy-and-identifiers"

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyGpsHelper;->isGooglePlayManifestConfigured()Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    new-instance v0, Lcom/tapjoy/TapjoyIntegrationException;

    const-string v1, "Failed to load manifest.xml meta-data, \'com.google.android.gms.version\' not found. For more information about including the Google Play services client library visit http://developer.android.com/google/play-services/setup.html or http://tech.tapjoy.com/product-overview/sdk-change-log/tapjoy-and-identifiers"

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1
    return-void
.end method

.method public getAdvertisingId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/tapjoy/TapjoyGpsHelper;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceGooglePlayServicesVersion()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/tapjoy/TapjoyGpsHelper;->d:I

    return v0
.end method

.method public getPackagedGooglePlayServicesVersion()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/tapjoy/TapjoyGpsHelper;->e:I

    return v0
.end method

.method public isAdIdAvailable()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/tapjoy/TapjoyGpsHelper;->f:Z

    return v0
.end method

.method public isAdTrackingEnabled()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/tapjoy/TapjoyGpsHelper;->c:Z

    return v0
.end method

.method public isGooglePlayManifestConfigured()Z
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/tapjoy/TapjoyGpsHelper;->h:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/TapjoyGpsHelper;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyGpsHelper;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 106
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 107
    const-string v1, "com.google.android.gms.version"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tapjoy/TapjoyGpsHelper;->e:I

    .line 108
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyGpsHelper;->h:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tapjoy/TapjoyGpsHelper;->h:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 110
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyGpsHelper;->h:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public isGooglePlayServicesAvailable()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 81
    iget-object v0, p0, Lcom/tapjoy/TapjoyGpsHelper;->g:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/TapjoyGpsHelper;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 85
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyGpsHelper;->g:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 95
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tapjoy/TapjoyGpsHelper;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 88
    :catch_0
    move-exception v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyGpsHelper;->g:Ljava/lang/Boolean;

    goto :goto_0

    .line 91
    :catch_1
    move-exception v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyGpsHelper;->g:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public loadAdvertisingId()V
    .locals 4

    .prologue
    .line 28
    const-string v0, "TapjoyGpsHelper"

    const-string v1, "Looking for Google Play Services..."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyGpsHelper;->isGooglePlayServicesAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tapjoy/TapjoyGpsHelper;->isGooglePlayManifestConfigured()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    const-string v0, "TapjoyGpsHelper"

    const-string v1, "Packaged Google Play Services found, fetching advertisingID..."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v0, "TapjoyGpsHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Packaged Google Play Services version: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tapjoy/TapjoyGpsHelper;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance v0, Lcom/tapjoy/TapjoyAdIdClient;

    iget-object v1, p0, Lcom/tapjoy/TapjoyGpsHelper;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyAdIdClient;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-virtual {v0}, Lcom/tapjoy/TapjoyAdIdClient;->setupAdIdInfo()Z

    move-result v1

    iput-boolean v1, p0, Lcom/tapjoy/TapjoyGpsHelper;->f:Z

    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/tapjoy/TapjoyGpsHelper;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.android.gms"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v1, p0, Lcom/tapjoy/TapjoyGpsHelper;->d:I

    .line 40
    const-string v1, "TapjoyGpsHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Device\'s Google Play Services version: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/tapjoy/TapjoyGpsHelper;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    iget-boolean v1, p0, Lcom/tapjoy/TapjoyGpsHelper;->f:Z

    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {v0}, Lcom/tapjoy/TapjoyAdIdClient;->isAdTrackingEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/tapjoy/TapjoyGpsHelper;->c:Z

    .line 48
    invoke-virtual {v0}, Lcom/tapjoy/TapjoyAdIdClient;->getAdvertisingId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyGpsHelper;->b:Ljava/lang/String;

    .line 50
    const-string v0, "TapjoyGpsHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Found advertising ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TapjoyGpsHelper;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v0, "TapjoyGpsHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Is ad tracking enabled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/tapjoy/TapjoyGpsHelper;->c:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :goto_1
    return-void

    .line 43
    :catch_0
    move-exception v1

    const-string v1, "TapjoyGpsHelper"

    const-string v2, "Error getting device\'s Google Play Services version"

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_0
    const-string v0, "TapjoyGpsHelper"

    const-string v1, "Error getting advertisingID from Google Play Services"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 58
    :cond_1
    const-string v0, "TapjoyGpsHelper"

    const-string v1, "Google Play Services not found"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
