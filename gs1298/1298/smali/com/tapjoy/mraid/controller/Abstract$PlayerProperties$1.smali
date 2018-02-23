.class final Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    .line 2061
    new-instance v0, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;

    invoke-direct {v0, p1}, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;-><init>(Landroid/os/Parcel;)V

    .line 59
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    .line 1065
    new-array v0, p1, [Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;

    .line 59
    return-object v0
.end method
