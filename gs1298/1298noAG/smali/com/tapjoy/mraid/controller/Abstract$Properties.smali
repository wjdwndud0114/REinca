.class public Lcom/tapjoy/mraid/controller/Abstract$Properties;
.super Lcom/tapjoy/mraid/controller/Abstract$ReflectedParcelable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/mraid/controller/Abstract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public backgroundColor:I

.field public backgroundOpacity:F

.field public isModal:Z

.field public lockOrientation:Z

.field public useBackground:Z

.field public useCustomClose:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 229
    new-instance v0, Lcom/tapjoy/mraid/controller/Abstract$Properties$1;

    invoke-direct {v0}, Lcom/tapjoy/mraid/controller/Abstract$Properties$1;-><init>()V

    sput-object v0, Lcom/tapjoy/mraid/controller/Abstract$Properties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 217
    invoke-direct {p0}, Lcom/tapjoy/mraid/controller/Abstract$ReflectedParcelable;-><init>()V

    .line 218
    iput-boolean v1, p0, Lcom/tapjoy/mraid/controller/Abstract$Properties;->useBackground:Z

    .line 219
    iput v1, p0, Lcom/tapjoy/mraid/controller/Abstract$Properties;->backgroundColor:I

    .line 220
    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/mraid/controller/Abstract$Properties;->backgroundOpacity:F

    .line 221
    iput-boolean v1, p0, Lcom/tapjoy/mraid/controller/Abstract$Properties;->isModal:Z

    .line 222
    iput-boolean v1, p0, Lcom/tapjoy/mraid/controller/Abstract$Properties;->lockOrientation:Z

    .line 223
    iput-boolean v1, p0, Lcom/tapjoy/mraid/controller/Abstract$Properties;->useCustomClose:Z

    .line 224
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/tapjoy/mraid/controller/Abstract$ReflectedParcelable;-><init>(Landroid/os/Parcel;)V

    .line 212
    return-void
.end method
