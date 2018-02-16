.class public Lcom/tapjoy/mraid/controller/MraidLocation;
.super Lcom/tapjoy/mraid/controller/Abstract;
.source "SourceFile"


# instance fields
.field final c:I

.field private d:Landroid/location/LocationManager;

.field private e:Z

.field private f:Lcom/tapjoy/mraid/listener/Loc;

.field private g:Lcom/tapjoy/mraid/listener/Loc;

.field private h:I

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/tapjoy/mraid/view/MraidView;Landroid/content/Context;)V
    .locals 3
    .param p1, "adView"    # Lcom/tapjoy/mraid/view/MraidView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0x3e8

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/mraid/controller/Abstract;-><init>(Lcom/tapjoy/mraid/view/MraidView;Landroid/content/Context;)V

    .line 24
    iput-boolean v1, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->e:Z

    .line 25
    iput v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->c:I

    .line 29
    iput-boolean v1, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->i:Z

    .line 40
    :try_start_0
    const-string v0, "location"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->d:Landroid/location/LocationManager;

    .line 42
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isUnitTestMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 43
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->d:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Lcom/tapjoy/mraid/listener/Loc;

    const/16 v1, 0x3e8

    const-string v2, "gps"

    invoke-direct {v0, p2, v1, p0, v2}, Lcom/tapjoy/mraid/listener/Loc;-><init>(Landroid/content/Context;ILcom/tapjoy/mraid/controller/MraidLocation;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->f:Lcom/tapjoy/mraid/listener/Loc;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->d:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 47
    new-instance v0, Lcom/tapjoy/mraid/listener/Loc;

    const/16 v1, 0x3e8

    const-string v2, "network"

    invoke-direct {v0, p2, v1, p0, v2}, Lcom/tapjoy/mraid/listener/Loc;-><init>(Landroid/content/Context;ILcom/tapjoy/mraid/controller/MraidLocation;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->g:Lcom/tapjoy/mraid/listener/Loc;

    .line 48
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->e:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Landroid/location/Location;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{ lat: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", acc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public allowLocationServices(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->i:Z

    .line 60
    return-void
.end method

.method public allowLocationServices()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->i:Z

    return v0
.end method

.method public fail()V
    .locals 2

    .prologue
    .line 143
    const-string v0, "MRAID Location"

    const-string v1, "Location can\'t be determined"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->a:Lcom/tapjoy/mraid/view/MraidView;

    const-string v1, "window.mraidview.fireErrorEvent(\"Location cannot be identified\", \"OrmmaLocationController\")"

    invoke-virtual {v0, v1}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public getLocation()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 80
    const-string v0, "MRAID Location"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getLocation: hasPermission: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->e:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-boolean v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->e:Z

    if-nez v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-object v1

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->d:Landroid/location/LocationManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    .line 85
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v0, v1

    .line 87
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 88
    iget-object v3, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->d:Landroid/location/LocationManager;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_2

    .line 93
    :cond_3
    const-string v2, "MRAID Location"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getLocation: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    if-eqz v0, :cond_0

    .line 95
    invoke-static {v0}, Lcom/tapjoy/mraid/controller/MraidLocation;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public startLocationListener()V
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->h:I

    if-nez v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->g:Lcom/tapjoy/mraid/listener/Loc;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->g:Lcom/tapjoy/mraid/listener/Loc;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/listener/Loc;->start()V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->f:Lcom/tapjoy/mraid/listener/Loc;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->f:Lcom/tapjoy/mraid/listener/Loc;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/listener/Loc;->start()V

    .line 111
    :cond_1
    iget v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->h:I

    .line 112
    return-void
.end method

.method public stopAllListeners()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->h:I

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->f:Lcom/tapjoy/mraid/listener/Loc;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/listener/Loc;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 158
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->g:Lcom/tapjoy/mraid/listener/Loc;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/listener/Loc;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 161
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public stopLocationListener()V
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->h:I

    .line 119
    iget v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->h:I

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->g:Lcom/tapjoy/mraid/listener/Loc;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->g:Lcom/tapjoy/mraid/listener/Loc;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/listener/Loc;->stop()V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->f:Lcom/tapjoy/mraid/listener/Loc;

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->f:Lcom/tapjoy/mraid/listener/Loc;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/listener/Loc;->stop()V

    .line 126
    :cond_1
    return-void
.end method

.method public success(Landroid/location/Location;)V
    .locals 2
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.mraidview.fireChangeEvent({ location: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tapjoy/mraid/controller/MraidLocation;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    const-string v1, "MRAID Location"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v1, v0}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    .line 137
    return-void
.end method
