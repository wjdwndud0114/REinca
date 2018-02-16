.class public Lcom/igaworks/adbrix/model/IconModel;
.super Ljava/lang/Object;
.source "IconModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private Resource:Ljava/lang/String;

.field private ResourceKey:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/igaworks/adbrix/model/IconModel$1;

    invoke-direct {v0}, Lcom/igaworks/adbrix/model/IconModel$1;-><init>()V

    sput-object v0, Lcom/igaworks/adbrix/model/IconModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "resourceKey"    # I
    .param p2, "resource"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/igaworks/adbrix/model/IconModel;->ResourceKey:I

    .line 16
    iput-object p2, p0, Lcom/igaworks/adbrix/model/IconModel;->Resource:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adbrix/model/IconModel;->Resource:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/igaworks/adbrix/model/IconModel;->ResourceKey:I

    .line 38
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public getResource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/igaworks/adbrix/model/IconModel;->Resource:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceKey()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/igaworks/adbrix/model/IconModel;->ResourceKey:I

    return v0
.end method

.method public setResource(Ljava/lang/String;)V
    .locals 0
    .param p1, "resource"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/igaworks/adbrix/model/IconModel;->Resource:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setResourceKey(I)V
    .locals 0
    .param p1, "resourceKey"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/igaworks/adbrix/model/IconModel;->ResourceKey:I

    .line 25
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/igaworks/adbrix/model/IconModel;->Resource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget v0, p0, Lcom/igaworks/adbrix/model/IconModel;->ResourceKey:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    return-void
.end method
