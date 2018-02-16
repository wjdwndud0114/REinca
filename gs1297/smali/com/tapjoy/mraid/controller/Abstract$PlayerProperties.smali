.class public Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;
.super Lcom/tapjoy/mraid/controller/Abstract$ReflectedParcelable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/mraid/controller/Abstract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayerProperties"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public audioMuted:Z

.field public autoPlay:Z

.field public doLoop:Z

.field public inline:Z

.field public showControl:Z

.field public startStyle:Ljava/lang/String;

.field public stopStyle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties$1;

    invoke-direct {v0}, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties$1;-><init>()V

    sput-object v0, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcom/tapjoy/mraid/controller/Abstract$ReflectedParcelable;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->showControl:Z

    iput-boolean v0, p0, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->autoPlay:Z

    .line 51
    iput-boolean v1, p0, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->audioMuted:Z

    iput-boolean v1, p0, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->doLoop:Z

    .line 52
    const-string v0, "normal"

    iput-object v0, p0, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->stopStyle:Ljava/lang/String;

    iput-object v0, p0, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->startStyle:Ljava/lang/String;

    .line 53
    iput-boolean v1, p0, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->inline:Z

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/tapjoy/mraid/controller/Abstract$ReflectedParcelable;-><init>(Landroid/os/Parcel;)V

    .line 71
    return-void
.end method


# virtual methods
.method public doLoop()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->doLoop:Z

    return v0
.end method

.method public doMute()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->audioMuted:Z

    return v0
.end method

.method public exitOnComplete()Z
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->stopStyle:Ljava/lang/String;

    const-string v1, "exit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isAutoPlay()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 110
    iget-boolean v1, p0, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->autoPlay:Z

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullScreen()Z
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->startStyle:Ljava/lang/String;

    const-string v1, "fullscreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public muteAudio()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->audioMuted:Z

    .line 103
    return-void
.end method

.method public setProperties(ZZZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "audioMuted"    # Z
    .param p2, "autoPlay"    # Z
    .param p3, "controls"    # Z
    .param p4, "inline"    # Z
    .param p5, "loop"    # Z
    .param p6, "startStyle"    # Ljava/lang/String;
    .param p7, "stopStyle"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-boolean p2, p0, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->autoPlay:Z

    .line 89
    iput-boolean p3, p0, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->showControl:Z

    .line 90
    iput-boolean p5, p0, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->doLoop:Z

    .line 91
    iput-boolean p1, p0, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->audioMuted:Z

    .line 92
    iput-object p6, p0, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->startStyle:Ljava/lang/String;

    .line 93
    iput-object p7, p0, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->stopStyle:Ljava/lang/String;

    .line 94
    iput-boolean p4, p0, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->inline:Z

    .line 96
    return-void
.end method

.method public setStopStyle(Ljava/lang/String;)V
    .locals 0
    .param p1, "style"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->stopStyle:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public showControl()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->showControl:Z

    return v0
.end method
