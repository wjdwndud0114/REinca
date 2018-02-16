.class public Lcom/igaworks/adbrix/model/SlideModel;
.super Ljava/lang/Object;
.source "SlideModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private Resource:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ResourceKey:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/igaworks/adbrix/model/SlideModel$1;

    invoke-direct {v0}, Lcom/igaworks/adbrix/model/SlideModel$1;-><init>()V

    sput-object v0, Lcom/igaworks/adbrix/model/SlideModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .param p1, "resourceKey"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p2, "resource":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/igaworks/adbrix/model/SlideModel;->ResourceKey:I

    .line 18
    iput-object p2, p0, Lcom/igaworks/adbrix/model/SlideModel;->Resource:Ljava/util/List;

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/igaworks/adbrix/model/SlideModel;->ResourceKey:I

    .line 39
    iget-object v0, p0, Lcom/igaworks/adbrix/model/SlideModel;->Resource:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 40
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public getResource()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/igaworks/adbrix/model/SlideModel;->Resource:Ljava/util/List;

    return-object v0
.end method

.method public getResourceKey()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/igaworks/adbrix/model/SlideModel;->ResourceKey:I

    return v0
.end method

.method public setResource(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "resource":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/igaworks/adbrix/model/SlideModel;->Resource:Ljava/util/List;

    .line 35
    return-void
.end method

.method public setResourceKey(I)V
    .locals 0
    .param p1, "resourceKey"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/igaworks/adbrix/model/SlideModel;->ResourceKey:I

    .line 27
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 49
    iget v0, p0, Lcom/igaworks/adbrix/model/SlideModel;->ResourceKey:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget-object v0, p0, Lcom/igaworks/adbrix/model/SlideModel;->Resource:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 51
    return-void
.end method
