.class public final Landroid/support/v4/net/TrafficStatsCompat;
.super Ljava/lang/Object;
.source "TrafficStatsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/net/TrafficStatsCompat$Api24TrafficStatsCompatImpl;,
        Landroid/support/v4/net/TrafficStatsCompat$IcsTrafficStatsCompatImpl;,
        Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;,
        Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 157
    const-string v0, "N"

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    new-instance v0, Landroid/support/v4/net/TrafficStatsCompat$Api24TrafficStatsCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/net/TrafficStatsCompat$Api24TrafficStatsCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/net/TrafficStatsCompat;->IMPL:Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;

    .line 164
    :goto_0
    return-void

    .line 159
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 160
    new-instance v0, Landroid/support/v4/net/TrafficStatsCompat$IcsTrafficStatsCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/net/TrafficStatsCompat$IcsTrafficStatsCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/net/TrafficStatsCompat;->IMPL:Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;

    goto :goto_0

    .line 162
    :cond_1
    new-instance v0, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/net/TrafficStatsCompat;->IMPL:Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearThreadStatsTag()V
    .locals 1

    .prologue
    .line 171
    sget-object v0, Landroid/support/v4/net/TrafficStatsCompat;->IMPL:Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;

    invoke-interface {v0}, Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;->clearThreadStatsTag()V

    .line 172
    return-void
.end method

.method public static getThreadStatsTag()I
    .locals 1

    .prologue
    .line 180
    sget-object v0, Landroid/support/v4/net/TrafficStatsCompat;->IMPL:Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;

    invoke-interface {v0}, Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;->getThreadStatsTag()I

    move-result v0

    return v0
.end method

.method public static incrementOperationCount(I)V
    .locals 1
    .param p0, "operationCount"    # I

    .prologue
    .line 191
    sget-object v0, Landroid/support/v4/net/TrafficStatsCompat;->IMPL:Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;->incrementOperationCount(I)V

    .line 192
    return-void
.end method

.method public static incrementOperationCount(II)V
    .locals 1
    .param p0, "tag"    # I
    .param p1, "operationCount"    # I

    .prologue
    .line 202
    sget-object v0, Landroid/support/v4/net/TrafficStatsCompat;->IMPL:Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;->incrementOperationCount(II)V

    .line 203
    return-void
.end method

.method public static setThreadStatsTag(I)V
    .locals 1
    .param p0, "tag"    # I

    .prologue
    .line 217
    sget-object v0, Landroid/support/v4/net/TrafficStatsCompat;->IMPL:Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;->setThreadStatsTag(I)V

    .line 218
    return-void
.end method

.method public static tagDatagramSocket(Ljava/net/DatagramSocket;)V
    .locals 1
    .param p0, "socket"    # Ljava/net/DatagramSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 249
    sget-object v0, Landroid/support/v4/net/TrafficStatsCompat;->IMPL:Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;->tagDatagramSocket(Ljava/net/DatagramSocket;)V

    .line 250
    return-void
.end method

.method public static tagSocket(Ljava/net/Socket;)V
    .locals 1
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 229
    sget-object v0, Landroid/support/v4/net/TrafficStatsCompat;->IMPL:Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;->tagSocket(Ljava/net/Socket;)V

    .line 230
    return-void
.end method

.method public static untagDatagramSocket(Ljava/net/DatagramSocket;)V
    .locals 1
    .param p0, "socket"    # Ljava/net/DatagramSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 256
    sget-object v0, Landroid/support/v4/net/TrafficStatsCompat;->IMPL:Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;->untagDatagramSocket(Ljava/net/DatagramSocket;)V

    .line 257
    return-void
.end method

.method public static untagSocket(Ljava/net/Socket;)V
    .locals 1
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 236
    sget-object v0, Landroid/support/v4/net/TrafficStatsCompat;->IMPL:Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;->untagSocket(Ljava/net/Socket;)V

    .line 237
    return-void
.end method
