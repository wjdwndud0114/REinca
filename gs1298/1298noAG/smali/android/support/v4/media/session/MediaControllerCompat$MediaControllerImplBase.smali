.class Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;
.super Ljava/lang/Object;
.source "MediaControllerCompat.java"

# interfaces
.implements Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaControllerImplBase"
.end annotation


# instance fields
.field private mBinder:Landroid/support/v4/media/session/IMediaSession;

.field private mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field private mTransportControls:Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 1
    .param p1, "token"    # Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .prologue
    .line 867
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 868
    iput-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 869
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getToken()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Landroid/support/v4/media/session/IMediaSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/session/IMediaSession;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    .line 870
    return-void
.end method


# virtual methods
.method public adjustVolume(II)V
    .locals 4
    .param p1, "direction"    # I
    .param p2, "flags"    # I

    .prologue
    .line 1030
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, v2}, Landroid/support/v4/media/session/IMediaSession;->adjustVolume(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1034
    :goto_0
    return-void

    .line 1031
    :catch_0
    move-exception v0

    .line 1032
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dead object in adjustVolume. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 905
    if-nez p1, :cond_0

    .line 906
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "event may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 909
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v1, p1}, Landroid/support/v4/media/session/IMediaSession;->sendMediaButton(Landroid/view/KeyEvent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 913
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 910
    :catch_0
    move-exception v0

    .line 911
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dead object in dispatchMediaButtonEvent. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 968
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->getExtras()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 972
    :goto_0
    return-object v1

    .line 969
    :catch_0
    move-exception v0

    .line 970
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dead object in getExtras. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFlags()J
    .locals 4

    .prologue
    .line 988
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->getFlags()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 992
    :goto_0
    return-wide v2

    .line 989
    :catch_0
    move-exception v0

    .line 990
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dead object in getFlags. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getMediaController()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1058
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetadata()Landroid/support/v4/media/MediaMetadataCompat;
    .locals 4

    .prologue
    .line 938
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 942
    :goto_0
    return-object v1

    .line 939
    :catch_0
    move-exception v0

    .line 940
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dead object in getMetadata. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1049
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1053
    :goto_0
    return-object v1

    .line 1050
    :catch_0
    move-exception v0

    .line 1051
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dead object in getPackageName. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPlaybackInfo()Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;
    .locals 8

    .prologue
    .line 998
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->getVolumeAttributes()Landroid/support/v4/media/session/ParcelableVolumeInfo;

    move-result-object v7

    .line 999
    .local v7, "info":Landroid/support/v4/media/session/ParcelableVolumeInfo;
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;

    iget v1, v7, Landroid/support/v4/media/session/ParcelableVolumeInfo;->volumeType:I

    iget v2, v7, Landroid/support/v4/media/session/ParcelableVolumeInfo;->audioStream:I

    iget v3, v7, Landroid/support/v4/media/session/ParcelableVolumeInfo;->controlType:I

    iget v4, v7, Landroid/support/v4/media/session/ParcelableVolumeInfo;->maxVolume:I

    iget v5, v7, Landroid/support/v4/media/session/ParcelableVolumeInfo;->currentVolume:I

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;-><init>(IIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1005
    .end local v7    # "info":Landroid/support/v4/media/session/ParcelableVolumeInfo;
    :goto_0
    return-object v0

    .line 1002
    :catch_0
    move-exception v6

    .line 1003
    .local v6, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dead object in getPlaybackInfo. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 4

    .prologue
    .line 928
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 932
    :goto_0
    return-object v1

    .line 929
    :catch_0
    move-exception v0

    .line 930
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dead object in getPlaybackState. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getQueue()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 948
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->getQueue()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 952
    :goto_0
    return-object v1

    .line 949
    :catch_0
    move-exception v0

    .line 950
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dead object in getQueue. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getQueueTitle()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 958
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->getQueueTitle()Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 962
    :goto_0
    return-object v1

    .line 959
    :catch_0
    move-exception v0

    .line 960
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dead object in getQueueTitle. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRatingType()I
    .locals 4

    .prologue
    .line 978
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->getRatingType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 982
    :goto_0
    return v1

    .line 979
    :catch_0
    move-exception v0

    .line 980
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dead object in getRatingType. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSessionActivity()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 1011
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->getLaunchPendingIntent()Landroid/app/PendingIntent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1015
    :goto_0
    return-object v1

    .line 1012
    :catch_0
    move-exception v0

    .line 1013
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dead object in getSessionActivity. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;
    .locals 2

    .prologue
    .line 918
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mTransportControls:Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    if-nez v0, :cond_0

    .line 919
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;

    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-direct {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;-><init>(Landroid/support/v4/media/session/IMediaSession;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mTransportControls:Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    .line 922
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mTransportControls:Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    return-object v0
.end method

.method public registerCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;Landroid/os/Handler;)V
    .locals 4
    .param p1, "callback"    # Landroid/support/v4/media/session/MediaControllerCompat$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 874
    if-nez p1, :cond_0

    .line 875
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "callback may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 878
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 879
    iget-object v2, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    # getter for: Landroid/support/v4/media/session/MediaControllerCompat$Callback;->mCallbackObj:Ljava/lang/Object;
    invoke-static {p1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->access$400(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/IMediaControllerCallback;

    invoke-interface {v2, v1}, Landroid/support/v4/media/session/IMediaSession;->registerCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V

    .line 880
    # invokes: Landroid/support/v4/media/session/MediaControllerCompat$Callback;->setHandler(Landroid/os/Handler;)V
    invoke-static {p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->access$500(Landroid/support/v4/media/session/MediaControllerCompat$Callback;Landroid/os/Handler;)V

    .line 881
    const/4 v1, 0x1

    # setter for: Landroid/support/v4/media/session/MediaControllerCompat$Callback;->mRegistered:Z
    invoke-static {p1, v1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->access$302(Landroid/support/v4/media/session/MediaControllerCompat$Callback;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 886
    :goto_0
    return-void

    .line 882
    :catch_0
    move-exception v0

    .line 883
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dead object in registerCallback. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onSessionDestroyed()V

    goto :goto_0
.end method

.method public sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "cb"    # Landroid/os/ResultReceiver;

    .prologue
    .line 1039
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    new-instance v2, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;

    invoke-direct {v2, p3}, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;-><init>(Landroid/os/ResultReceiver;)V

    invoke-interface {v1, p1, p2, v2}, Landroid/support/v4/media/session/IMediaSession;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1044
    :goto_0
    return-void

    .line 1041
    :catch_0
    move-exception v0

    .line 1042
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dead object in sendCommand. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setVolumeTo(II)V
    .locals 4
    .param p1, "value"    # I
    .param p2, "flags"    # I

    .prologue
    .line 1021
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, v2}, Landroid/support/v4/media/session/IMediaSession;->setVolumeTo(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1025
    :goto_0
    return-void

    .line 1022
    :catch_0
    move-exception v0

    .line 1023
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dead object in setVolumeTo. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V
    .locals 4
    .param p1, "callback"    # Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    .prologue
    .line 890
    if-nez p1, :cond_0

    .line 891
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "callback may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 894
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    .line 895
    # getter for: Landroid/support/v4/media/session/MediaControllerCompat$Callback;->mCallbackObj:Ljava/lang/Object;
    invoke-static {p1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->access$400(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/IMediaControllerCallback;

    .line 894
    invoke-interface {v2, v1}, Landroid/support/v4/media/session/IMediaSession;->unregisterCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V

    .line 896
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 897
    const/4 v1, 0x0

    # setter for: Landroid/support/v4/media/session/MediaControllerCompat$Callback;->mRegistered:Z
    invoke-static {p1, v1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->access$302(Landroid/support/v4/media/session/MediaControllerCompat$Callback;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 901
    :goto_0
    return-void

    .line 898
    :catch_0
    move-exception v0

    .line 899
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dead object in unregisterCallback. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
