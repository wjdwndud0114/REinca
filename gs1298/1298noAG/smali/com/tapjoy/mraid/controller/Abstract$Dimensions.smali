.class public Lcom/tapjoy/mraid/controller/Abstract$Dimensions;
.super Lcom/tapjoy/mraid/controller/Abstract$ReflectedParcelable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/mraid/controller/Abstract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dimensions"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public height:I

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 173
    new-instance v0, Lcom/tapjoy/mraid/controller/Abstract$Dimensions$1;

    invoke-direct {v0}, Lcom/tapjoy/mraid/controller/Abstract$Dimensions$1;-><init>()V

    sput-object v0, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 163
    invoke-direct {p0}, Lcom/tapjoy/mraid/controller/Abstract$ReflectedParcelable;-><init>()V

    .line 164
    iput v0, p0, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->x:I

    .line 165
    iput v0, p0, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->y:I

    .line 166
    iput v0, p0, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->width:I

    .line 167
    iput v0, p0, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->height:I

    .line 168
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/tapjoy/mraid/controller/Abstract$ReflectedParcelable;-><init>(Landroid/os/Parcel;)V

    .line 190
    return-void
.end method
