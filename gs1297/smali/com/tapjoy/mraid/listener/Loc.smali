.class public Lcom/tapjoy/mraid/listener/Loc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field a:Lcom/tapjoy/mraid/controller/MraidLocation;

.field private b:Landroid/location/LocationManager;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/tapjoy/mraid/controller/MraidLocation;Ljava/lang/String;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "interval"    # I
    .param p3, "ormmaLocationController"    # Lcom/tapjoy/mraid/controller/MraidLocation;
    .param p4, "provider"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p3, p0, Lcom/tapjoy/mraid/listener/Loc;->a:Lcom/tapjoy/mraid/controller/MraidLocation;

    .line 77
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/tapjoy/mraid/listener/Loc;->b:Landroid/location/LocationManager;

    .line 78
    iput-object p4, p0, Lcom/tapjoy/mraid/listener/Loc;->c:Ljava/lang/String;

    .line 80
    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/tapjoy/mraid/listener/Loc;->a:Lcom/tapjoy/mraid/controller/MraidLocation;

    invoke-virtual {v0, p1}, Lcom/tapjoy/mraid/controller/MraidLocation;->success(Landroid/location/Location;)V

    .line 103
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tapjoy/mraid/listener/Loc;->a:Lcom/tapjoy/mraid/controller/MraidLocation;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/controller/MraidLocation;->fail()V

    .line 87
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 119
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 93
    if-nez p2, :cond_0

    .line 94
    iget-object v0, p0, Lcom/tapjoy/mraid/listener/Loc;->a:Lcom/tapjoy/mraid/controller/MraidLocation;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/controller/MraidLocation;->fail()V

    .line 96
    :cond_0
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    .line 125
    iget-object v0, p0, Lcom/tapjoy/mraid/listener/Loc;->b:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/tapjoy/mraid/listener/Loc;->c:Ljava/lang/String;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 126
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/tapjoy/mraid/listener/Loc;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 110
    return-void
.end method
